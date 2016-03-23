library(rjson)
library(tidyr)
library(dplyr)
library(ggmap)
library(png)

addBlock <- function(tree) {
  census.parms <- paste0("street=", tree$number, "+", 
                      gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                      "&city=new+york&state=NY&benchmark=9&format=json")
  result <- fromJSON(file = paste0(census.url, census.parms))
  from <- as.numeric(result$result$addressMatches[[1]]$addressComponents$fromAddress)
  to <- as.numeric(result$result$addressMatches[[1]]$addressComponents$toAddress)
  # side <- result$result$addressMatches[[1]]$tigerLine$side
  from.parms <- paste0("street=", from, "+", 
                       gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                       "&city=new+york&state=NY&benchmark=9&format=json")
  to.parms <- paste0("street=", to, "+", 
                     gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                     "&city=new+york&state=NY&benchmark=9&format=json")
  fromCoord <- fromJSON(file = paste0(census.url, from.parms))
  toCoord <- fromJSON(file = paste0(census.url, to.parms))
  fromInt <- fromJSON(file = paste0(gis.url, fromCoord$result$addressMatches[[1]]$coordinates$x, 
                                    ",", fromCoord$result$addressMatches[[1]]$coordinates$y,
                                    "&returnIntersection=true"))
  toInt <- fromJSON(file = paste0(gis.url, toCoord$result$addressMatches[[1]]$coordinates$x, 
                                  ",", toCoord$result$addressMatches[[1]]$coordinates$y,
                                  "&returnIntersection=true"))
  fromCross <- gsub(tree$street, "", fromInt$address$Address)
  toCross <- gsub(tree$street, "", toInt$address$Address)
  tmp <- data.frame(id = nrow(blocks) + 1, start = min(from, to), end = max(from, to), 
                    street = tree$street, cross1 = fromCross,cross2 = toCross,
                    zip = tree$zip, count = 1, stringsAsFactors = FALSE)
  tmp
}

gcd <- function(long1, lat1, long2, lat2) {
  # Computes the great-circle distance between two points using the haversine formula
  #
  # Args:
  #   long1:  Longitude of first point in decimal degrees
  #   lat2:   Latitude of first point in decimal degrees
  #   long2:  Longitude of first point in decimal degrees
  #   lat2:   Latitude of second point in decimal degrees
  #
  # Returns:
  #   The distance in meters
  
  long1 <- deg2rad(long1) 
  lat1 <- deg2rad(lat1)
  long2 <- deg2rad(long2) 
  lat2 <- deg2rad(lat2)
  r <- 6371000
  long.delt <- (long2 - long1)
  lat.delt <- (lat2 - lat1)
  a <- sin(lat.delt/2)^2 + cos(lat1) * cos(lat2) * sin(long.delt/2)^2
  c <- 2 * atan2(sqrt(a), sqrt(1 - a))
  r * c
}

deg2rad <- function(deg) return(deg*pi/180)


# This roughly describes an MBB between the Manhattan bridge and 8th and D.
border.corner.sw.lat <- "40.71455760597046"
border.corner.sw.long <- "-73.99566650390625"
border.corner.ne.lat <- "40.723713744687295"
border.corner.ne.long <- "-73.97626876831055"

treemap.url <- paste("https://tree-map.nycgovparks.org/points",
              border.corner.sw.lat, border.corner.sw.long, 
              border.corner.ne.lat, border.corner.ne.long,
              "undefined", "1", "2000", sep = "/")
raw <- fromJSON(file = treemap.url)

gis.url <- paste0("http://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/",
                 "reverseGeocode?f=json&location=")
treeMap <- lapply(raw$item, function(i) {
  address <- fromJSON(file = paste0(gis.url, i$lng, ",", i$lat))
  c(i$lat, i$lng, i$stumpdiameter, address$address$Match_addr)
  })

treeMap.raw <- treeMap
treeMap <- data.frame(matrix(unlist(treeMap.raw), ncol = 4, byrow = TRUE), stringsAsFactors = FALSE)
treeMap$X4 <- gsub(", (New York|Knickerbocker), New York", "", treeMap$X4)
treeMap <- treeMap %>% separate(col = X4, into = c("address", "zip"), sep = ", ") %>% 
                    separate(col = address, into = c("number", "street"), extra = "merge")
names(treeMap)[1:3] <- c("lat", "lon", "stumpDiam")
treeMap$stumpDiam <- as.numeric(treeMap$stumpDiam)
treeMap$number <- as.numeric(treeMap$number)

# build block table
census.url <- "http://geocoding.geo.census.gov/geocoder/locations/address?"
# seed block table with correct data types
blocks <- data.frame(id = 1, start = 222, end = 276, street = "Elizabeth St", cross1 = "Prince St",
                       cross2 = "E Houston St", zip = "10012", count = 0, stringsAsFactors = FALSE)
for (i in 1 : nrow(treeMap)) {
  x <- inner_join(treeMap[i, ], blocks, by = c("street" = "street", "zip" = "zip"))
  if (nrow(x) > 0) {
    y <- x$start <= unique(x$number) & x$end >= unique(x$number)
    if (sum(y)) {
      # Taking only first match, not differentiating between sides of street
      blocks[x[which(y)[1], "id"], "count"] <- blocks[x[which(y)[1], "id"], "count"] + 1
    } else {
      blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
    }
  }
  else{
    blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
  } 
}

blocks$cross1 <- gsub(" & ", "", blocks$cross1)
blocks$cross2 <- gsub(" & ", "", blocks$cross2)

# Collapse both street sides into single segment
s <- blocks %>% group_by(street, cross1, cross2, zip) %>% 
      summarize(sides = n(),total = sum(count)) %>% as.data.frame()

# Manual cross-street correction
s[is.na(s$street), c("street", "cross1", "cross2", "zip")] <- "NA"
s[s$cross2 == "E Houston St & Avenue D", "cross2"] <- "Avenue D"
s[s$cross2 == "Stanton St & Pitt St", "cross2"] <- "Grand St"
s[s$cross2 == "E Houston St & Ludlow St", "cross2"] <- "Avenue A"
s[s$cross2 == "Delancey St S & Baruch Dr", "cross2"] <-  "Stanton St"
# instances where cross1 == cross2
s[s$cross2 == "Clinton St" & s$cross1 == "Clinton St",  "cross2"] <-  "Attorney St"
s[s$cross1 == "E 1st St" & s$cross2 == "E 1st St", "cross1"] <- "E Houston St"
s[s$cross1 == "Rivington St" & s$cross2 == "Rivington St" & 
    s$street == "Columbia St", "cross1"] <- "Delancey St"
s[s$cross1 == "Rivington St" & s$cross2 == "Rivington St" & 
    s$street == "Chrystie St", "cross1"] <- "Stanton St"
s[s$cross1 == "Chrystie St" & s$cross2 == "Chrystie St", "cross1"] <- "Bowery"
s[s$cross1 == "Stanton St" & s$cross2 == "Stanton St", "cross1"] <- "Rivington St"
s[s$cross1 == "Ridge St" & s$cross2 == "Ridge St" & 
    s$street == "Broome St", "cross1"] <- "Clinton St"
s[s$cross1 == "Ridge St" & s$cross2 == "Ridge St" &
    s$street == "Grand St", c("cross1", "cross2")] <- c("Attorney St", "Pitt St")
s[s$cross1 == "E 3rd St" & s$cross2 == "E 3rd St", "cross2"] <- "E 4th St"
s[s$cross1 == "E 4th St" & s$cross2 == "E 4th St", "cross1"] <- "E 3rd St"
s[s$cross1 == "E 5th St" & s$cross2 == "E 5th St", "cross1"] <- "E 4th St"
s[s$cross1 == "Spring St" & s$cross2 == "Spring St", "cross2"] <- "Rivington St"
s[s$cross1 == "Lewis St" & s$cross2 == "Lewis St", "cross1"] <- "Baruch Dr"
s[s$cross1 == "Mangin St" & s$cross2 == "Mangin St", "cross2"] <- "FDR Dr"
s[s$cross1 == "Samuel Dickstein Plz" & s$cross2 == "Samuel Dickstein Plz", "cross2"] <- "Grand St"

# re-agg after fixes; account for mult rows of same segment ie row1$cross1==row2$cross2; comb. zips
cross1 <- pmin(s$cross1, s$cross2)
cross2 <- pmax(s$cross1, s$cross2)
s <- data.frame(street = s$street, cross1, cross2, total = s$total)
dat <- s %>% group_by(street, cross1, cross2) %>% summarize(total = sum(total)) %>% as.data.frame()

# Distance of an intersection
#add start and end geo code to each block. that will allow to plot on the map and calculate distance 
# can't use gis results from original start/end address call. Need to consider entire segment.
dat$distance <- NULL
err <- NULL
gis.url.find <- "http://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/find?f=json"
for (i in 137:138) {
  tryCatch({
    gis.url.parms1 <- URLencode(paste0(dat[i, "street"], " and ", dat[i, "cross1"], ", nyc"))
    coords.cross1 <- paste0(gis.url.find, "&text=", gis.url.parms1)
    gis.url.parms2 <- URLencode(paste0(dat[i, "street"], " and ", dat[i, "cross2"], ", nyc"))
    coords.cross2 <- paste0(gis.url.find, "&text=", gis.url.parms2)
    coords.cross1 <- fromJSON(file = coords.cross1)
    coords.cross2 <- fromJSON(file = coords.cross2)
    d <- gcd(coords.cross1$locations[[1]]$feature$geometry$x, 
             coords.cross1$locations[[1]]$feature$geometry$y, 
             coords.cross2$locations[[1]]$feature$geometry$x, 
             coords.cross2$locations[[1]]$feature$geometry$y)
    dat[i, "distance"] <- d 
  },
  error = function(e){
    err <<- c(err, i)
  })
}

mymap <- get_map(location = "40.72017399459069,-73.98639034958494", zoom = 15, 
                 maptype = "toner-lines")
inv <- readPNG("invert.png")
g <- ggmap(mymap) + 
  #  inset_raster(inv, xmin = -74.048, xmax = -73.928, ymin = 40.68, ymax = 40.766) +
  geom_point(data = treeMap, aes(x = lon, y = lat, size = stumpDiam, color = stumpDiam), 
             alpha = 0.45) +
  scale_size(range = c(1, 3)) +
  theme_nothing() +
  scale_color_continuous(low = "chartreuse", high = "chartreuse4")
