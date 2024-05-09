library(tidyverse)
install.packages("tidyverse")
library(tidyverse)
data()
view(mpg)
?mpg
?mean
mean(mpg$displ)
glimpse(mpg)
?filter

mpg_efficient <- filter(mpg, cty >= 20)
view(mpg_efficient)
mpg_audi <- filter(mpg, manufacturer=='audi')
view(mpg_audi)
mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)
view(mpg_metric)
glimpse(mpg_metric)
mpg_metric <- mpg %>% 
  mutate(mpg, cty_metric = 0.425144 * cty)
view(mpg_metric)

# get summaries of mean and median per class
mpg %>% 
  group_by(class) %>% 
  summarise(mean(cty),
            median(cty))

# data visualisation with ggplot2

ggplot(mpg, aes(x = cty)) +
  geom_histogram() +
  geom_freqpoly()
  labs(x = 'city mileage')
  
ggplot(mpg, aes(x = cty,
       y = hwy)) + 
  geom_point() +
  geom_smooth(method = 'lm')

ggplot(mpg, aes(x = cty,
                y = hwy,
                color=class)) + 
  geom_point() +
  scale_color_brewer(palette = 'Dark')

ggplot(mpg, aes(x=cty,
                y=hwy, 
       color=trans)) +
  geom_point()
        

  