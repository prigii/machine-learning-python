install.packages('tidyverse')
require(tidyverse)
install.packages('dplyr')
View(starwars)
View(women)
glimpse(women)
data(women)
?women

summarise(women, mean(height))
select(women, height)
women %>%
  select(height, weight) %>%
  mutate(height = height / 100) %>%
  mutate(weight = weight * 0.453592) %>%
  mutate(BMI = weight / height^2) %>%
  mutate(Fitness = if_else(BMI > 30, 'obese', 'fit'))

starwars %>%
  select(height, mass, species, sex) %>%
  mutate(height = height / 100) %>%
  mutate(BMI = mass / height^2) %>%
  filter(species == 'Human') %>% 
  na.omit(species, BMI) %>% 
  group_by(sex) %>% 
  summarise(mean_bmi = mean(BMI)) %>% 
  mutate(sex = recode(sex, "male" = 'm',
                      "female" = 'f'))

?tidyverse
?dplyr
help("dplyr")

