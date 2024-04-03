# Exp No: 09
# Author: Don Sabu 21AD024
# Program: Binding Vectors

Mark_1 <- sample(70:100, 5)
cat("Mark 1: ",Mark_1, "\n")
Mark_2 <- sample(70:100, 5)
cat("Mark 1: ",Mark_2, "\n")
print("Row binded vector:")
print(rbind(Mark_1, Mark_2))
print("Column binded vector:")
print(cbind(Mark_1, Mark_2))