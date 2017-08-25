hosts<- read.csv('reputation.data', stringsAsFactors = FALSE, header = FALSE, sep= '#')
head(hosts)
hosts$V2<-NULL
hosts$V3<-NULL
hosts$V4<-NULL
hosts$V8<-NULL
colnames(hosts)<-c('IP','Country','City','Coordinates')
library(stringr)

#now we need coordinates column as latitude and longitude
hosts$Latitude<-str_replace(hosts$Coordinates,'(.+),.+','\\1')
hosts$Longitude<-str_replace(hosts$Coordinates,'(.+),(.+)','\\2')
hosts$Coordinates<-NULL