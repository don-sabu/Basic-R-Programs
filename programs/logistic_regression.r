# Exp No: 14
# Author: Don Sabu 21AD024
# Program: Logistic Regression

library(readr)

heart_data <- read.csv("https://raw.githubusercontent.com/ADSJCET/ADL_331/main/heart-data.csv")
str(heart_data)
heart_data$class <- factor(heart_data$class)
set.seed(123)
train_index <- sample(1:nrow(heart_data), 0.8 * nrow(heart_data))
train_data <- heart_data[train_index, ]
test_data <- heart_data[-train_index, ]
model <- glm(class ~ ., data = train_data, family = "binomial")
predictions <- ifelse(predict(model, newdata = test_data, type = "response") > 0.5, 1, 0)
conf_matrix <- table(Actual = test_data$class, Predicted = predictions)
print(conf_matrix)
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
print(paste("Accuracy:", accuracy))
