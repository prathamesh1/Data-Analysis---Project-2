library(ggplot2)
df$Country<-factor(df$Country,levels=top_countries)
ggplot()+
  geom_bar(data=df,aes(x=Country))+
  theme(
    panel.background=element_rect(fill = 'black'),
    panel.grid.major=element_line(linetype='blank'),
    panel.grid.minor=element_line(linetype='blank')
  )

