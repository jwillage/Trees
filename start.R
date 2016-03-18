library(rjson)
library(plyr)
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

treeMap <- lapply(raw$item, function(i) c(i$ lat, i$lng, i$stumpdiameter))
treeMap <- data.frame(matrix(unlist(treeMap), ncol = 3, byrow = TRUE))
names(treeMap) <- c("lat", "lon", "stumpDiam")

mymap <- get_map(location = "40.72017399459069,-73.98639034958494", zoom = 15, 
                   maptype = "toner-lines")
inv <- readPNG("invert.png")
g <- ggmap(mymap) + 
#  inset_raster(inv, xmin = -74.048, xmax = -73.928, ymin = 40.68, ymax = 40.766) +
     geom_point(data = treeMap, aes(x = lon, y = lat, size = stumpDiam, color = stumpDiam), 
                alpha = 0.45) +
     scale_size(range = c(1, 3)) +
     theme_nothing() +
     scale_color_continuous(low = "chartreuse", high = "chartreuse4") + 
     geom_point(data = data.frame(x = c(from.lon, to.lon, lon), y = c(from.lat, to.lat, lat)), 
                aes(x = x, y = y),
             color = "blue", size = 2)

# via <- paste0("http://router.project-osrm.org/viaroute?hl=en&loc=",
#               from.lat, ",", from.lon, "&loc=", to.lat, ",", to.lon)
# http://router.project-osrm.org/viaroute?hl=en&loc=40.7181264,-73.988733&loc=40.7193574,-73.9881134
# http://router.project-osrm.org/viaroute?hl=en&loc=-73.9859247,40.7193534&loc=-73.9865443,40.7181224
# 
# http://services.gisgraphy.com/reversegeocoding/search?format=json&lat=48.8723789988&lng=2.2996401787
url <- paste0("http://geocoding.geo.census.gov/geocoder/locations/address?",
               "street=100+suffolk+st&city=new+york&state=NY&benchmark=9&format=json")
# use from and to address to store "blocks" in a lookup table. if the street number falls within 
# a matched block, perform lookup. else make api call, and add to lookup table and increment 
# new block by 1.
