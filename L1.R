print('hello')
X<-10
Y<-12
Z<-X+Y
x<-c('male','female','male','male','female')
x
y<-factor(x)
y


library(gapminder)
data("gapminder")
summary(gapminder)
x<-mean(gapminder$gdpPercap)
x
attach(gapminder)
median(pop)
hist(lifeExp)
hist(log(pop))
scatter.smooth(lifeExp~log(gdpPercap))

install.packages("dyplr")     
library(dplyr)

gapminder%>%
   select(country,lifeExp)%>%
    filter(country=="South Africa" |
             country=="Ireland") %>%
    group_by(country)%>%
    summarise(Average_life=mean(lifeExp))

df1=gapminder%>%
  select(country,lifeExp)%>%
  filter(country=="South Africa" |
           country=="Ireland") %>%
  group_by(country)
t.test(data=df1, lifeExp~country)

library("ggplot2")    
gapminder%>%
  filter(gdpPercap < 50000) %>%
  ggplot(aes(x=log(gdpPercap),y=lifeExp,col=year,size=pop))+
  geom_point(alpha=0.3)+
  geom_smooth(method=lm)+
  facet_wrap(~continent)

             