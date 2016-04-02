# Accuracy
Joe Willage  
March 30, 2016  





This is an exploration to achieve higher accuracy in mapping latitude and longitude to a street segment. Here a segment is defined as a section of street bounded by two other streets. The end goal is an abstracted pattern, but the motivation is to more accurately map trees in New York City to a specific block. 

The previous analysis left off by stating that an answer was reached, "but how valid is it?" Some inconsistancies were noted, specifically with the block that had the highest reported TPM. Recall the graphic that went with this statement. 


```r
library(ggmap)
library(knitr)
library(rjson)
library(dplyr)
```




```r
map.sewardPark <- get_map(location = "40.71597,-73.9889687", zoom = 17, maptype = "toner-lines")
ggmap(map.sewardPark) + 
   geom_point(data = treeMap[treeMap$blockId == 35,],
              aes(x = lon, y = lat, size = stumpDiam), alpha = 0.35, color = "chartreuse") +
   scale_size(range = c(5, 7)) +
   theme_nothing()
```

![](Figs/sewardPark-1.png) 

And note that all of these trees mapped to the block of Grand b/w Clinton and Suffolk, when most actually lie on Clinton St. The southmost tree mapped to this block is the following.


```r
block.35 <- treeMap[treeMap$blockId == 35, ]
head(block.35[order(block.35$lat), ], 1)
```

```
##          lat       lon stumpDiam number   street   zip     id blockId
## 1690 40.7153 -73.98717        12    410 Grand St 10002 165907      35
```

Tree 165907 is reverse geocoded as 410 Grand, but viewing the full tree data from the Tree Map website returns the nearest address as 187 Clinton, much more accurate. This may prove to be a useful alternative.  

However, the Geonames Find Nearby Streets API provids another useful match. It's not the exact address that's needed for any tree, it's just the nearest street. In fact, that API provides not only the nearest street, but also the to/from addresses of the segment. A takeaway from the first analysis is that mixing and matching geocoding services gets messy. In attempt to minimize error, only the Geonames family of APIs will be used.  

For the tree of interest, here is the result from the Geonames Find Nearby Streets call.


```r
user <- readLines("../../geonames.txt")
nearestAddress.url <- paste0("http://api.geonames.org/findNearbyStreetsJSON?&username=", user, "&")
nearestAddress.parms <- paste0("lat=", block.35[order(block.35$lat), ][1, "lat"], 
                               "&lng=", block.35[order(block.35$lat), ][1, "lon"])
seg <- fromJSON(file = paste0(nearestAddress.url, nearestAddress.parms))
seg <- sapply(seg$streetSegment, function(i) c(i$name, i$fraddl, i$fraddr, i$toaddl, i$toaddr, 
                                              i$mtfcc, i$zip, i$postalcode, i$distance, i$line))
segments <- seg %>% t %>% as.data.frame(stringsAsFactors = FALSE) %>% 
            setNames(c("Street",	"fraddl", "fraddr",	"toaddl", "toaddr",	 "mtfcc",	"zip", 
                       "distance", "line"))
segments[, 1:8]
```

```
##        Street fraddl fraddr toaddl toaddr mtfcc   zip distance
## 1  Clinton St    166    167    184    185 S1400 10002     0.01
## 2                                         S1710          0.035
## 3  Clinton St    186    187    198    197 S1400 10002    0.036
## 4  Clinton St    140    139    164    165 S1400 10002    0.082
## 5    Grand St    408    411    424    425 S1400 10002    0.082
## 6    Grand St    390    389    406    409 S1400 10002    0.082
## 7                                         S1710            0.1
## 8                                         S1780          0.101
## 9  Suffolk St      1      2     61     62 S1400 10002    0.104
## 10   Grand St    374    383    388    387 S1400 10002    0.104
```

This useful result set returns the to and from addresses for both sides of the street, as well as the distance from the street (which is how the results are ordered). This may be useful in validation. A final component, not included in the above table, is the coordinate line of each segment. This allows for drawing a multi-segment line on a map, another useful tool in validation. Plotting these street segments results in the following


```r
segments[1, "line"]
```

```
## [1] "-73.986721 40.715952,-73.98683 40.715777,-73.986929 40.715603,-73.986996 40.715456,-73.987074 40.715241,-73.98713 40.715031,-73.987138 40.714974"
```

```r
segments$id <- seq_along(segments$Street)
```
