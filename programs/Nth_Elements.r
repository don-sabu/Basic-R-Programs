# Exp No: 07
# Author: Don Sabu 21AD024
# Program: Nth element in vector

v <- c(1:20)
print(v)
n = as.integer(readline(prompt ="Enter value of n: "))
c <- n
cat("Every",n,"th element in the vector is \n")
while (n <= length(v)) {
  cat(v[n], " ")
  n <- n + c
}