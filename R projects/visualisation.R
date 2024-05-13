library(tidyverse)
install.packages("modeldata")
library(modeldata)
?ggplot2
View(crickets)

# Plot basics
ggplot(crickets, aes(x=temp, y=rate,
                     color=species)) +
  geom_point() +
  labs(x = 'Temperature',
       y = 'Rate of chirps',
       color='Species',
       title = 'Crickets chirps',
       caption = 'Source: McDonald (2009)') +
  scale_color_brewer(palette='Dark2')

# Modifying aesthetics
ggplot(crickets, aes(x=temp, y=rate,
                     color=species,
                     )) +
  geom_point(shape = 'square',
             color= 'red',
             alpha = .4,
             size = 4) +
  labs(x = 'Temperature',
       y = 'Rate of chirps',
       title = 'Crickets chirps',
       caption = 'Source: McDonald (2009)')


# Adding more layers
ggplot(crickets, aes(x=temp, y=rate,
                     )) +
  geom_point() +
  geom_smooth(method = 'lm',
              se = FALSE
  )+
  labs(x = 'Temperature',
       y = 'Rate of chirps',
       title = 'Crickets chirps',
       caption = 'Source: McDonald (2009)')

# With more lines for each species

ggplot(crickets, aes(x=temp, y=rate,
                     colour = species
                      )) +
  geom_point() +
  geom_smooth(method = 'lm',
              se = FALSE
              )+
  labs(x = 'Temperature',
       y = 'Rate of chirps',
       title = 'Crickets chirps',
       caption = 'Source: McDonald (2009)')

# Get help using ?geom_point
# Histogram - one quantitative var
ggplot(crickets, aes(x=rate)) +
  geom_histogram(bins = 15)
# Frequency polygon - one quantitative var
ggplot(crickets, aes(x=rate)) +
  geom_freqpoly(bins = 15)

# Bar chart - qualitative/categorical vars
ggplot(crickets, aes(x=species,
                     fill = species)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_brewer(palette = 'Dark2')

# Boxplot - one categorical/qualitative and one quantitative var
ggplot(crickets, aes(x= species,
                     y= rate,
                     colour = species)) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_brewer(palette = 'Dark2') +
  theme_minimal()

# Faceting
ggplot(crickets, aes(x= rate,
                     fill = species)) +
  geom_histogram(bins=15, show.legend = FALSE) +
  facet_wrap(~species, ncol = 2) +
  scale_fill_brewer(palette = 'Dark2') 
  

# Using base R
df = data.frame(x = rnorm(1000))
head(df)
hist(df$x)

# Using ggplot()
ggplot(df, aes(x)) +
  geom_histogram(bins = 15, 
                 colour ='red')
ggplot(df, aes(x)) +
  geom_(bins = 15, 
                 colour ='red')

data("iris")
attach(iris)
iris
View(iris)
str(iris)


summary(iris)
library(ggplot2)
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_point(colour='red')+
  labs(title = 'Sepals',
       x='Sepal Length',
       y='Sepal Width',
       caption = 'Source:')


ggplot(iris, aes(x= Sepal.Length,
                     fill = Species)) +
  geom_histogram(bins=15, show.legend = FALSE) +
  facet_wrap(~Species, ncol = 2) +
  scale_fill_brewer(palette = 'Dark2') 

ggplot(iris, aes(x= Species,
                     y= Sepal.Length,
                     colour = Species)) +
  geom_boxplot(show.legend = FALSE) 

describe(Sepal.Length)

cor.test(Sepal.Length, Sepal.Width)
cor.test(Sepal.Length, Petal.Length)
data = table(Sepal.Length, Species)
barplot(data)
View(data)
