
#Este va a ser un cambio para poner texto
library(ggplot2)
install.packages("ggplot2")
install.packages("plotly")
  library(plotly)
install.packages("dplyr")
library(gapminder)
library("dplyr")
data<-gapminder
p<-ggplot(data=data, mapping = aes(x=gdpPercap, y=lifeExp))+geom_point()
ggplotly(p)

plot_ly(x=c("leones","orangutanes","monos"), y=c(5, 10, 7), type="bar")

plot_ly(labels=c("leones","orangutanes","monos"), values=c(5, 10, 7), type="pie")

data<-ggplot2:: diamonds
View(diamonds)
data<- data%>%count(cut,clarity)
fig<-data%>% plot_ly(x=~cut, y=~n, color= ~clarity)
fig
