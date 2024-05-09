data("iris")
?iris
glimpse(iris)
view(iris)
str(iris)

#chi-squared test
chi_plot
flowers<-iris %>% 
  mutate(Size=cut(Sepal.Length,
                  breaks = 3,
                  labels = c('small', 'medium', 'large'))) %>%
  select(Species, Size)

#chi-sq goodness of fit test
flowers %>% 
  select(Size) %>% 
  table() %>% 
  chisq.test()

#chi-sq test of independence
flowers %>% 
  table()%>%
  chisq.test()
  
#linear regression
names(cars)

cars %>% 
  lm(dist ~ speed, data = .) %>% 
  summary()
