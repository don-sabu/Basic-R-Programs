# Exp No: 20
# Author: Don Sabu 21AD024
# Program: Statistical Operations

library(cluster)
data("iris")
setosa <- iris$Sepal.Length[iris$Species=="setosa"]
versicolor <- iris$Sepal.Length[iris$Species=="versicolor"]
print(t.test(setosa,versicolor))
print(summary(aov(Sepal.Length~Species, data = iris)))
print(wilcox.test(setosa,versicolor))
print(kruskal.test(setosa,versicolor))
print(fligner.test(Sepal.Length~Species, data = iris))
print(prop.table(table(iris$Species)))
print(binom.test(sum(iris$Species=="setosa"),length(iris$Species)))


Output


	Welch Two Sample t-test

data:  setosa and versicolor
t = -10.521, df = 86.538, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.1057074 -0.7542926
sample estimates:
mean of x mean of y 
    5.006     5.936 

  ANOVA

             Df Sum Sq Mean Sq F value Pr(>F)    
Species       2  63.21  31.606   119.3 <2e-16 ***
Residuals   147  38.96   0.265                   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

	Wilcoxon rank sum test with continuity correction

data:  setosa and versicolor
W = 168.5, p-value = 8.346e-14
alternative hypothesis: true location shift is not equal to 0


	Kruskal-Wallis rank sum test

data:  setosa and versicolor
Kruskal-Wallis chi-squared = 16.502, df = 20, p-value = 0.685


	Fligner-Killeen test of homogeneity of variances

data:  Sepal.Length by Species
Fligner-Killeen:med chi-squared = 11.618, df = 2, p-value =
0.003

	Proportion Test

    setosa versicolor  virginica 
 0.3333333  0.3333333  0.3333333 

	Exact binomial test

data:  sum(iris$Species == "setosa") and length(iris$Species)
number of successes = 50, number of trials = 150, p-value =
5.448e-05
alternative hypothesis: true probability of success is not equal to 0.5
95 percent confidence interval:
 0.2585564 0.4148430
sample estimates:
probability of success 
             0.3333333 
