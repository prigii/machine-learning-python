# Load dataset (example)
data <- read.csv("your_dataset.csv")

# Summary statistics
summary(data)

# Mean
mean(data$variable)

# Median
median(data$variable)

# Standard Deviation
sd(data$variable)

# Variance
var(data$variable)

# Range
range(data$variable)

# Quartiles
quantile(data$variable)

# One-sample t-test
t.test(data$variable, mu = expected_mean)

# Independent samples t-test
t.test(variable ~ group, data = data)

# One-way ANOVA
anova_model <- aov(variable ~ group, data = data)
summary(anova_model)

# Repeated Measures ANOVA
library(nlme) # Load the nlme package

# Fit repeated measures ANOVA model
rm_anova_model <- aov(dependent_variable ~ within_subject_factor + between_subject_factor + Error(subject/within_subject_factor), data = data)

# Summary of the model
summary(rm_anova_model)

# 2-Way ANOVA
# Assuming 'factor1' and 'factor2' are the two independent variables
# and 'dependent_variable' is the dependent variable
two_way_anova_model <- aov(dependent_variable ~ factor1 * factor2, data = data)

# Summary of the model
summary(two_way_anova_model)

# Mixed Model ANOVA
library(lme4) # Load the lme4 package

# Fit mixed model ANOVA
mixed_model <- lmer(dependent_variable ~ fixed_factor1 * fixed_factor2 + (1 | subject), data = data)

# Summary of the model
summary(mixed_model)

# Linear regression
lm_model <- lm(dependent_variable ~ independent_variable1 + independent_variable2, data = data)
summary(lm_model)

# Logistic regression
glm_model <- glm(outcome ~ predictor1 + predictor2, family = binomial(link = "logit"), data = data)
summary(glm_model)


# Correlation Analysis
# Assuming 'variable1' and 'variable2' are the two variables for correlation analysis
correlation_coefficient <- cor(data$variable1, data$variable2)

# Print correlation coefficient
print(correlation_coefficient)

#Tests for normality
# Shapiro-Wilk test
shapiro.test(data)

#Kolmogorov-Smirnov Test
ks.test(data, "pnorm", mean(data), sd(data))

# Add a small amount of random noise to tied values
data_no_ties <- jitter(data, amount = 0.0001)

# Perform Kolmogorov-Smirnov test on data with no ties
ks.test(data_no_ties, "pnorm", mean(data_no_ties), sd(data_no_ties))


#Histogram
hist(data)

#QQ plot
qqnorm(data)
qqline(data)

#Density plot
plot(density(data))

# Perform Mann-Whitney U test/Wilcoxon Rank-Sum test (2-indpt samples)
wilcox.test(group1, group2)


# Perform Wilcoxon Signed-Rank Test(1-sample)
wilcox.test(data, mu = 'test_mean')

# Perform Kruskal-Wallis Test
kruskal.test(data)

# Perform Friedman's Test
friedman.test(data)





install.packages('lme4')

data('cars')
data(cars)
str(cars)
View(cars)
cor(cars$speed, cars$dist)
cor.test(cars$speed, cars$dist)
cor.test(cars$speed, cars$dist, method = 'spearman')
qqplot(cars,cars$speed)
x = cars$dist
y = cars$speed
qqplot(y, x)
qqline(y,x)
qqnorm(y,x)
linear_model = lm(y ~ x)
summary(linear_model)
?data
#Iris data
data(iris)
View(iris)
summary(iris)
attach(iris)
#One sample t-test 
t.test(Sepal.Width, mu=3)

#anova
anova_model = aov(Sepal.Length ~ Species)
summary(anova_model)

#Normality
shapiro.test(x)
ks.test(x, 'pnorm', mean(x), sd(x))
x_no_ties = jitter(x, amount = 0.0001)
ks.test(x_no_ties, 'pnorm',mean(x_no_ties), sd(x_no_ties))

hist(x)
curve(dnorm(x, mean = mean(x), sd = sd(data)), add=TRUE, col='blue',lwd = 2)

qqnorm(x)
qqline(x)

#density plot
plot(density(x))

ks.test(x_no_ties, 'pnorm', mean(x), sd(x))

data("USArrests")
attach(USArrests)
View(USArrests)
str(USArrests)
summary(USArrests)
t.test(Assault, mu=100)
qqnorm(Assault)
qqline(Assault)
qqnorm(Murder)
qqline(Murder)
qqnorm(UrbanPop)
qqline(UrbanPop)
hist(Assault)

data("diabetes")
attach(diabetes)
str(diabetes)
View(diabetes)
diabetes = read.csv('data/diabetes.csv')
View(diabetes)
str(diabetes)
attach(diabetes)
lm_model = lm(DiabetesPedigreeFunction ~ Glucose + BloodPressure + Insulin + BMI + Age)
summary(lm_model)
glm_model = glm(Outcome ~ Insulin + BloodPressure + Glucose, family = 'binomial'(link = 'logit'))
summary(glm_model)
qqnorm(Insulin)
qqline(Insulin)
qqnorm(BloodPressure)
qqline(BloodPressure)

t.test(Insulin ~ Outcome)
t.test(BloodPressure ~ Outcome)
t.test(BMI ~ Outcome)
t.test(Glucose ~ Outcome)

#Mann-Whitney U test/Wilcoxon Rank-sum test (2-independt samples)
wilcox.test(Outcome)

# Perform Wilcoxon Signed-Rank Test (1-sample)
wilcox.test(BMI, mu = 25)

shapiro.test(BMI)
ks.test(BMI, 'pnorm', mean(BMI), sd(BMI))

friedman.test(Sepal.Length ~ Species, data = iris)

?friedman.test

# Perform Friedman's Test
result <- friedman.test(as.matrix(iris[, "Sepal.Length"]), iris$Species)

# Print the test result
print(result)
glm_model = glm(Species ~ Sepal.Length, family = 'binomial')
summary(glm_model)
