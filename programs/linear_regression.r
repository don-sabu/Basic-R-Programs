# Exp No: 13
# Author: Don Sabu 21AD024
# Program: Linear Regression
data(mtcars)
print(str(mtcars))
model <- lm(mpg ~ wt, data = mtcars)
plot(mtcars$wt, mtcars$mpg, main="Simple Linear Regression", xlab="Weight", ylab="MPG", pch=19)
abline(model, col="red")