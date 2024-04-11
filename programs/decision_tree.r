# Exp No: 15
# Author: Don Sabu 21AD024
# Program: Decision Tree

library(rpart)
library(caret)
library(rpart.plot)
data("iris")
tree <- rpart(Species ~ ., data = iris, method = "class")
predictions <- predict(tree, newdata = iris, type = "class")
conf_matrix <- confusionMatrix(predictions, iris$Species)
print(conf_matrix)
rpart.plot(tree)
