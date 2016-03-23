**US Census Geocoding Services**  

Geocodes addresses and also returns the range of addresses on the block of input

http://geocoding.geo.census.gov/geocoder/Geocoding_Services_API.html  
Also available as browser-based app: http://geocoding.geo.census.gov/geocoder/locations/address  

**ArcGIS REST API: World Geocoding Service**

ReverseGeocode returns the closest address to a given lat/lng location  
http://developers.arcgis.com/rest/geocode/api-reference/geocoding-reverse-geocode.htm  

The Find operation geocodes input and can handle intersections  
https://developers.arcgis.com/rest/geocode/api-reference/geocoding-find.htm  

**New York City Street Tree Map Beta**  

Interactive map to view details from a city-wide to a single tree level. No official API  
https://tree-map.nycgovparks.org/points/\<SW lat>\/\<SW lng\>/\<NE lat\>/\<NE lng\>/undefined/
\<start tree\>/\<end tree\>  
View details of a specific tree, including closest address:  
https://tree-map.nycgovparks.org/tree/full/\<tree-id from points json\>  
Browser-based map:  
https://tree-map.nycgovparks.org/  
