# Exp No: 12
# Author: Don Sabu 21AD024
# Program: apply, lapply, mapply and tupply

matrix_data <- matrix(1:12, nrow = 4)
print(matrix_data)
list_data <- list(a = 1:3, b = 4:6, c = 7:9)
print(list_data)
add_two <- function(x) {
  x + 2
}

sum_two <- function(x, y) {
  x + y
}

# Apply function to each column of the matrix
result_apply <- apply(matrix_data, 2, add_two)
print("Result of apply:")
print(result_apply)

# Apply function to each element of the list
result_lapply <- lapply(list_data, add_two)
print("Result of lapply:")
print(result_lapply)

# Apply function to corresponding elements of vectors
result_mapply <- mapply(sum_two, list_data$a, list_data$b)
print("Result of mapply:")
print(result_mapply)

# Apply function to subsets of a vector
result_tapply <- tapply(matrix_data, row(matrix_data), sum)
print("Result of tapply:")
print(result_tapply)
