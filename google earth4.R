polygon<-function(states){
  coords<-geocode(states)
  corner1<-paste(coords$lon+1,coords$lat+1,10000,sep=',') #++
  corner2<-paste(coords$lon-1,coords$lat+1,10000,sep=',') #-+
  corner3<-paste(coords$lon-1,coords$lat-1,10000,sep=',') #--
  corner4<-paste(coords$lon+1,coords$lat-1,10000,sep=',') #+-
  start<-'<Placemark>\n'
  name<-paste('<name>',states,'</name>\n')
  middle<-       '<Polygon>
  <extrude>1</extrude>
  <altitudeMode>relativeToGround</altitudeMode>
  <outerBoundaryIs>
  <LinearRing>\n'
  coordinates<-    paste('<coordinates>',
              corner1,
              corner2,
              corner3,
              corner4,
              corner1,
                        '</coordinates>\n')
  end<-        '</LinearRing>
  </outerBoundaryIs>
  </Polygon>
  </Placemark>'
  kml<- paste(start,name,middle,coordinates,end)
  cat(kml,file='polygon.kml',appends=TRUE)
}