library(rjson)
library(tidyr)
library(dplyr)
library(ggmap)
library(png)

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
url.main <- "http://geocoding.geo.census.gov/geocoder/locations/address?"
blocks <- data.frame(id = 1, start = 222, end = 276, street = "Elizabeth St", cross1 = "Prince St",
                       cross2 = "E Houston St", zip = "10012", count = 0, stringsAsFactors = FALSE)
for (i in 1 : nrow(treeMap)) {
  x <- inner_join(treeMap[i, ], blocks, by = c("street" = "street", "zip" = "zip"))
  if (nrow(x) > 0) {
    if (findInterval(x$number, c(x$start, x$end))) {
      blocks[x$id, "count"] <- blocks[x$id, "count"] + 1
    } else {
      blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
    }
  }
  else{
    blocks <- rbind(blocks,  addBlock(treeMap[i, ]))
  } 
}
  

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
  fromCross <- gsub(paste0(tree$street, " & "), "", fromInt$address$Address)
  toCross <- gsub(paste0(tree$street, " & "), "", toInt$address$Address)
  tmp <- data.frame(id = nrow(blocks) + 1, start = min(from, to), end = max(from, to), 
                    street = tree$street, cross1 = fromCross,cross2 = toCross,
                    zip = tree$zip, count = 1, 
                    stringsAsFactors = FALSE)
  tmp
}