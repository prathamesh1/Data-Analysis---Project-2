library(rgdal)
writeOGR(hostsp[rows,],'hosts.kml',layer=hosts,driver='KML')
