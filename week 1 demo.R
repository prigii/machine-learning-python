library(tidyverse)
data("women")
attach(women)
library(ggplot2)
ggplot(women, aes(x = height, y = weight)) +
       geom_point() +
  geom_smooth(method = 'lm')
y = c(women$height)
x = c(women$weight)
lm(y~x)
summary(y)
summary(x)
ggplot(women, aes(weight)) +
  qqplot()+
  qqline()
qqnorm(women$height)
qqline(women$weight)
lmweight = lm(weight~height, data = women)
summary(lmweight)
