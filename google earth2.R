polygon<-function(states){
 start<-'<?xml version="1.0" encoding="UTF-8"?>
    <kml xmlns="http://www.opengis.net/kml/2.2">
    <Placemark>\n'
 name<-paste('<name>',states,'</name>\n')
 middle<-       '<Polygon>
        <extrude>1</extrude>
        <altitudeMode>relativeToGround</altitudeMode>
        <outerBoundaryIs>
        <LinearRing>\n'
coordinates<-          '<coordinates>
          -77.05788457660967,38.87253259892824,10000
          -77.05465973756702,38.87291016281703,10000 
          -77.05315536854791,38.87053267794386,10000
          -77.05552622493516,38.868757801256,10000
          -77.05844056290393,38.86996206506943,10000 
          -77.05788457660967,38.87253259892824,10000
          </coordinates>\n'
end<-        '</LinearRing>
        </outerBoundaryIs>
        </Polygon>
    </Placemark>
  </kml>'
kml<- paste(start,name,middle,coordinates,end)
  cat(kml)
}