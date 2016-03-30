library(rjson)
library(tidyr)
library(dplyr)
library(ggmap)
library(png)

addBlock <- function(tree) {
  tryCatch({
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
    if (grepl(tree$street, fromInt$address$Address)) {
      cross1 <- gsub(tree$street, "", fromInt$address$Address)
      cross1 <- gsub(" & ", "", cross1)
    } else{
      warning("Intersection does not include original street")
    }
    if (grepl(tree$street, toInt$address$Address)) {
      cross2 <- gsub(tree$street, "", toInt$address$Address)
      cross2 <- gsub(" & ", "", cross2)
    } else{
      warning("Intersection does not include original street")
    }
    crossCoords <- geocodeBlockEnds(tree$street, cross1, cross2)
    tmp <- data.frame(id = max(blocks$id) + 1, start = min(from, to), end = max(from, to), 
                      street = tree$street, 
                      cross1 = fromCross, 
                      cross1.lat = crossCoords$cross1$y, cross1.lon = crossCoords$cross1$x,
                      cross2 = toCross, 
                      cross2.lat = crossCoords$cross2$y, cross2.lon = crossCoords$cross2$x,
                      zip = tree$zip, count = 1, stringsAsFactors = FALSE)
    tmp
    },
    error = function(err) {
      addBlockErr <<- c(addBlockErr, tree$id)
      tmp <- data.frame(id =  max(blocks$id) + 1, start = min(from, to), end = max(from, to), 
                        street = tree$street, cross1 = NA, 
                        cross1.lat = NA,
                        cross1.lon = NA,
                        cross2 = NA,
                        cross2.lat = NA,
                        cross2.lon = NA,
                        zip = tree$zip, count = 1, stringsAsFactors = FALSE)
      tmp
    }
  )
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

deg2rad <- function(deg) return(deg * pi / 180)

geocodeBlockEnds <- function(street, cross1, cross2){
  # given cross streets, add x and y coords
  
  # order so multiple segment entries will match
  fromCross <- min(cross1, cross2)
  toCross <- max(cross1, cross2)
  gis.url.parms1 <- URLencode(paste0(street, " and ", fromCross, ", nyc"))
  coords.cross1 <- paste0(gis.url.find, "&text=", gis.url.parms1)
  gis.url.parms2 <- URLencode(paste0(street, " and ", toCross, ", nyc"))
  coords.cross2 <- paste0(gis.url.find, "&text=", gis.url.parms2)
  coords.cross1 <- fromJSON(file = coords.cross1)
  coords.cross2 <- fromJSON(file = coords.cross2)
  l <- list(street = street, 
            cross1 = list(
              street = cross1,
              y = coords.cross1$locations[[1]]$feature$geometry$y,
              x = coords.cross1$locations[[1]]$feature$geometry$x
            ),
            cross2 = list(
              street = cross2,
              y = coords.cross2$locations[[1]]$feature$geometry$y,
              x = coords.cross2$locations[[1]]$feature$geometry$x
            )
  )
  l
}

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
gis.url.find <- "http://geocode.arcgis.com/arcgis/rest/services/World/GeocodeServer/find?f=json"

treeMap <- lapply(raw$item, function(i) {
  address <- fromJSON(file = paste0(gis.url, i$lng, ",", i$lat))
  c(i$id, i$lat, i$lng, i$stumpdiameter, address$address$Match_addr)
  })

treeMap.raw <- treeMap
treeMap <- data.frame(matrix(unlist(treeMap.raw), ncol = 4, byrow = TRUE), 
                      stringsAsFactors = FALSE)
treeMap$X5 <- gsub(", (New York|Knickerbocker), New York", "", treeMap$X5)
treeMap <- treeMap %>% separate(col = X5, into = c("address", "zip"), sep = ", ") %>% 
                    separate(col = address, into = c("number", "street"), extra = "merge")
names(treeMap)[1:4] <- c("id", "lat", "lon", "stumpDiam")
treeMap$stumpDiam <- as.numeric(treeMap$stumpDiam)
treeMap$number <- as.numeric(treeMap$number)
treeMap$lat <- as.numeric(treeMap$lat)
treeMap$lon <- as.numeric(treeMap$lon)

# build block table
census.url <- "http://geocoding.geo.census.gov/geocoder/locations/address?"
# seed block table with correct data types
blocks <- data.frame(id = 1, start = 222, end = 276, street = "Elizabeth St", 
                     cross1 = "Prince St", cross1.lat = 40.722725, cross1.lon = -73.994156,
                     cross2 = "E Houston St", cross2.lat = 40.724434, cross2.lon = -73.99346, 
                     zip = "10012", count = 0, stringsAsFactors = FALSE)
treeMap$blockId <- NULL
addBlockErr <- NULL
for (i in 1 : nrow(treeMap)) {
  x <- inner_join(treeMap[i, ], blocks, by = c("street" = "street", "zip" = "zip"))
  #x <- inner_join(treeMap[treeMap$id == addBlockErr.30[i], ], blocks, by = c("street" = "street", "zip" = "zip"))
  if (nrow(x) > 0) {
    y <- x$start <= unique(x$number) & x$end >= unique(x$number)
    if (sum(y)) {
      # Taking only first match, not differentiating between sides of street
      blocks[x[which(y)[1], "id.y"], "count"] <- blocks[x[which(y)[1], "id.y"], "count"] + 1
      treeMap[i, "blockId"] <-  x[which(y)[1], "id.y"]
    } else {
      blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
      treeMap[i, "blockId"] <- max(blocks$id)
    }
  }
  else{
    blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
    treeMap[i, "blockId"] <- max(blocks$id)
  } 
}

blocks.agg <- blocks %>% group_by(street, cross1, cross1.lat, cross1.lon, cross2, 
                         cross2.lat, cross2.lon) %>% 
  summarize(start = min(start), end = max(end), combined = n(),total = sum(count)) %>% 
  as.data.frame()


# Add distance between intersections
blocks.agg$distance <- NULL
for (i in 1:nrow(blocks.agg)) {
  d <- gcd(blocks.agg[i, "cross1.lon"], 
           blocks.agg[i, "cross1.lat"], 
           blocks.agg[i, "cross2.lon"], 
           blocks.agg[i, "cross2.lat"])
  blocks.agg[i, "distance"] <- d 
}

blocks.agg$tpm <- blocks.agg$trees / blocks.agg$distance
head(dat[order(dat$tpm, decreasing = T),], 20)


