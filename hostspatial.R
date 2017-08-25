hostsp<-hosts
library(sp)
hostsp$Latitude<-as.numeric(hostsp$Latitude)
hostsp$Longitude<-as.numeric(hostsp$Longitude)
coordinates(hostsp)<-~Longitude+Latitude
hostsp@data
head(hostsp@coords)
proj4string(hostsp)<-CRS('+proj=longlat +datum=WGS84')
plot(hostsp)

library(RgoogleMaps)
map<-MapBackground(lat=hostsp$Latitude[rows], lon=hostsp$Longitude[rows])
PlotOnStaticMap(map, lat=hostsp$Latitude[rows], lon=hostsp$Longitude[rows],pch=19,cex=.5)

rows<-which(hostsp$Latitude>=35 & hostsp$Latitude<=45 & hostsp$Longitude<=-70 & hostsp$Longitude>=-80)

library(rgdal)
writeOGR(hostsp[rows,],'hosts.kml',layer=hosts,driver='KML')

