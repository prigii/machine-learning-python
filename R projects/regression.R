# Generate random IQ values with mean = 30 and sd =2
IQ <- rnorm(40, 30, 2)

# Sorting IQ level in ascending order
IQ <- sort(IQ)

# Generate vector with pass and fail values of 40 students
result <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 1,
            1, 0, 0, 0, 1, 1, 0, 0, 1, 0,
            0, 0, 1, 0, 0, 1, 1, 0, 1, 1,
            1, 1, 1, 0, 1, 1, 1, 1, 0, 1)

# Data Frame
df <- as.data.frame(cbind(IQ, result))

# Print data frame
print(df)
# Plotting IQ on x-axis and result on y-axis 
plot(IQ, result, xlab = "IQ Level", 
     ylab = "Probability of Passing")

# Create a logistic model
g = glm(result~IQ, family=binomial, df)

# Create a curve based on prediction using the regression model
curve(predict(g, data.frame(IQ=x), type="resp"), add=TRUE)

# Based on fit to the regression model
points(IQ, fitted(g), pch=30)

# Summary of the regression model
summary(g)

# correlation
cor.test(x, y)

#qqplot
qqplot(x,y, plot.it = TRUE)
qqline(y, datax = FALSE, distribution = qnorm, probs = c(0.25, 0.75))

#2-Way Cross-Tabulation Using ‘gmodels’:
install.packages('gmodels')
library(gmodels)
varx<- c(1,2,3,4,4,4,5,1,2,3) #create var x
vary<- c(2,1,1,4,5,4,2,1,2,2) #create var y

CrossTable(varx, vary) #CrossTable  has a decent amount of things you can specify too!
