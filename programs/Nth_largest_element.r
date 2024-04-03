# Exp No: 08
# Author: Don Sabu 21AD024
# Program: Nth largest element

v <- sample(1:100, 10, replace=F) 
print(v)
n = as.integer(readline(prompt ="Enter value of n: "))
sorted_v <- sort(v, decreasing = TRUE)
cat(n,"th largest element in the vector is: ",sorted_v[n])