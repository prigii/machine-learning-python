library(tidyverse)
name<-c('Njeri', 'Kamau', 'Aggie', 'Rosalia')
age<-c(12, 14, 21, 30)
gender<-c('F', 'M', 'F', 'F')

friends<-data.frame(name, age, gender)
view(friends)

friends$name
library(ggplot2)

ggplot(data=friends, aes(x=name,
                    y=age)) +
  geom_bar()


# Create dummy data
dummy_data <- data.frame(
  ID = 1:10,
  Age = sample(18:60, 10, replace = TRUE),
  Score = rnorm(10, mean = 75, sd = 10)
)

# Display the first few rows of the loaded data
head(dummy_data)


# Load the necessary package
library(ggplot2)

# Create dummy data
my_data <- data.frame(
  x_var = 1:10,
  y_var = rnorm(10)
)
# Plot the data using ggplot2
ggplot(data = my_data, aes(x = x_var, y = y_var)) +
  geom_point()
