data("starwars")
glimpse(starwars)

library(tidyverse)

starwars %>% 
  filter(height > 150, mass < 200) %>% 
  mutate(height_in_m = height/100) %>% 
  select(height_in_m, mass) %>% 
  arrange(mass) %>% 
  #view() 
  plot()
head(starwars)
names(starwars)
missing<-!complete.cases(mass)

starwars %>% 
  filter(sex == 'hermaphroditic')

mean(starwars$height, na.rm = TRUE)
names(starwars)

ggplot(data = starwars,
       mapping = aes(x=gender,
                     y=height))+
 geom_point()

starwars %>% 
  drop_na(height) %>%
  ggplot(mapping = aes(x=height))+
  geom_histogram()

#boxplots
starwars %>% 
  drop_na(height) %>%
  ggplot(aes(height))+
  geom_boxplot(fill = 'steelblue')+
  theme_bw()+
  labs(title = 'Boxplot of height',
       x = 'Height of characters')

#density plots
starwars %>% 
  drop_na(height) %>%
  filter(sex %in% c('male', 'female')) %>% 
  ggplot(aes(height, 
             color=sex,
             fill=sex))+
  geom_density(alpha = 0.2)+
  theme_bw()

#scatter plots
starwars %>% 
  filter(mass<200) %>%
  ggplot(aes(height, mass, color = sex))+
  geom_point(size=5, alpha=0.5)+
  theme_minimal()+
  labs(title = 'Height and mass by sex')
