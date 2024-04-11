# Exp No: 18
# Author: Don Sabu 21AD024
# Program: Clustering

library(cluster)
data(iris)
selected_data <- iris[, c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")]
k <- 3
kmeans_result <- kmeans(selected_data, centers = k)
cluster_assignments <- kmeans_result$cluster
print(kmeans_result$centers)
plot(selected_data[, c(1, 3)], col = cluster_assignments, main = "K-means Clustering (Iris Dataset)")
points(kmeans_result$centers[, c(1, 3)], col = 1:k, pch = 8, cex = 2)
