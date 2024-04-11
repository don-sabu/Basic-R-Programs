# Exp No: 16
# Author: Don Sabu 21AD024
# Program: SVM

library(e1071)
data("iris")
model <- svm(Species ~ ., data = iris)
predictions <- predict(model, iris)
confusion_matrix <- table(predictions, iris$Species)
print(confusion_matrix)
accuracy<-sum(diag(confusion_matrix))/sum(confusion_matrix)
cat("Accuracy:", accuracy)
