#now we have to look up for countries who appeared most of the time suspecious
library(dplyr)
df<-hosts%>%
  group_by(Country)%>%
  summarise(count=n())%>%
  arrange(desc(count))
top_countries<-df$Country[1:20]

df<-hosts%>%
  filter(Country %in% top_countries )