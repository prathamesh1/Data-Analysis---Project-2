df<-hosts%>%
  group_by(City)%>%
  summarise(Count=n())%>%
  arrange(desc(Count))

topcities<-df$City[2:21]

df<- hosts%>%
  filter(City %in% topcities)

df$City<-factor(df$City,levels = topcities)

ggplot()+
  geom_bar(data=df,aes(x=City),color='white',fill='yellow')+
  theme(
    panel.background=element_rect(fill='black'),
    panel.grid.major=element_line(linetype = 'blank'),
    panel.grid.minor=element_line(linetype = 'blank')
  )