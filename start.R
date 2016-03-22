library(rjson)
library(tidyr)
library(dplyr)
library(ggmap)
library(png)

addBlock <- function(tree) {
  url.parms <- paste0("street=", tree$number, "+", 
                      gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                      "&city=new+york&state=NY&benchmark=9&format=json")
  result <- fromJSON(file = paste0(url.main, url.parms))
  from <- as.numeric(result$result$addressMatches[[1]]$addressComponents$fromAddress)
  to <- as.numeric(result$result$addressMatches[[1]]$addressComponents$toAddress)
  # side <- result$result$addressMatches[[1]]$tigerLine$side
  from.parms <- paste0("street=", from, "+", 
                       gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                       "&city=new+york&state=NY&benchmark=9&format=json")
  to.parms <- paste0("street=", to, "+", 
                     gsub(" ", "+", tree$street), "&zip=", tree$zip, 
                     "&city=new+york&state=NY&benchmark=9&format=json")
  fromCoord <- fromJSON(file = paste0(url.main, from.parms))
  toCoord <- fromJSON(file = paste0(url.main, to.parms))
  fromInt <- fromJSON(file = paste0(gisUrl, fromCoord$result$addressMatches[[1]]$coordinates$x, 
                                    ",", fromCoord$result$addressMatches[[1]]$coordinates$y,
                                    "&returnIntersection=true"))
  toInt <- fromJSON(file = paste0(gisUrl, toCoord$result$addressMatches[[1]]$coordinates$x, 
                                  ",", toCoord$result$addressMatches[[1]]$coordinates$y,
                                  "&returnIntersection=true"))
  fromCross <- gsub(tree$street, "", fromInt$address$Address)
  toCross <- gsub(ree$street, "", toInt$address$Address)
  tmp <- data.frame(id = nrow(blocks) + 1, start = min(from, to), end = max(from, to), 
                    street = tree$street, cross1 = fromCross,cross2 = toCross,
                    zip = tree$zip, count = 1, 
                    stringsAsFactors = FALSE)
  tmp
}

# This roughly describes an MBB between the Manhattan bridge and 8th and D.
border.corner.sw.lat <- "40.71455760597046"
border.corner.sw.long <- "-73.99566650390625"
border.corner.ne.lat <- "40.723713744687295"
border.corner.ne.long <- "-73.97626876831055"

url <- paste("https://tree-map.nycgovparks.org/points",
              border.corner.sw.lat, border.corner.sw.long, 
              border.corner.ne.lat, border.corner.ne.long,
              "undefined", "1", "2000", sep = "/")
raw <- fromJSON(file = url)

# Documentation developers.arcgis.com/rest/geocode/api-reference/geocoding-reverse-geocode.htm
gisUrl <- paste0("http://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/",
                 "reverseGeocode?f=json&location=")
treeMap <- lapply(raw$item, function(i) {
  address <- fromJSON(file = paste0(gisUrl, i$lng, ",", i$lat))
  c(i$lat, i$lng, i$stumpdiameter, address$address$Match_addr)
  })

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

treeMap.raw <- treeMap
treeMap <- data.frame(matrix(unlist(treeMap.raw), ncol = 4, byrow = TRUE), stringsAsFactors = FALSE)
treeMap$X4 <- gsub(", (New York|Knickerbocker), New York", "", treeMap$X4)
treeMap <- treeMap %>% separate(col = X4, into = c("address", "zip"), sep = ", ") %>% 
                    separate(col = address, into = c("number", "street"), extra = "merge")
names(treeMap)[1:3] <- c("lat", "lon", "stumpDiam")
treeMap$stumpDiam <- as.numeric(treeMap$stumpDiam)
treeMap$number <- as.numeric(treeMap$number)
# 943 unique addresses on 48 streets

# build block table
# Documentation http://geocoding.geo.census.gov/geocoder/Geocoding_Services_API.html
url.main <- "http://geocoding.geo.census.gov/geocoder/locations/address?"
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
s <- blocks %>% group_by(street, cross1, cross2, zip) %>% summarize(sides = n(),total = sum(count))
s <- as.data.frame(s) 

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

