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
treeMap.raw <- treeMap
treeMap <- data.frame(matrix(unlist(treeMap.raw), ncol = 4, byrow = TRUE))
treeMap$X4 <- gsub(", (New York|Knickerbocker), New York", "", treeMap$X4)
treeMap <- treeMap %>% separate(col = X4, into = c("address", "zip"), sep = ", ") %>% 
                    separate(col = address, into = c("number", "street"), extra = "merge")
names(treeMap)[1:3] <- c("lat", "lon", "stumpDiam")

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

# url <- paste0("http://geocoding.geo.census.gov/geocoder/locations/address?",
#                "street=100+suffolk+st&city=new+york&state=NY&benchmark=9&format=json")
# use from and to address to store "blocks" in a lookup table. if the street number falls within 
# a matched block, perform lookup. else make api call, and add to lookup table and increment 
# new block by 1.
