# Exp No: 17
# Author: Don Sabu 21AD024
# Program: Variance, Covariance and Correlation

data("iris")
sample1 = iris$Sepal.Length
sample2 = iris$Petal.Length
cat("Variance :\n")
print(var(sample1, sample2))
cat("Covariance :\n")
print(cov(sample1, sample2))
cat("Correlation :\n")
print(cor(sample1, sample2))
