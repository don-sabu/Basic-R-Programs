# Exp No: 19
# Author: Don Sabu 21AD024
# Program: Hierarchical Clustering

library(cluster)
data(mtcars)
selected_data <- mtcars[, c("mpg", "disp", "hp", "wt")]
hierarchical_result <- hclust(dist(selected_data), method = "complete")
plot(hierarchical_result, main = "Hierarchical Clustering Dendrogram", xlab = "Index", ylab = "Distance", sub = NULL)
clusters <- cutree(hierarchical_result, k = 3)
clustered_cars <- split(row.names(selected_data), clusters)

# Print cars in each cluster
for (i in seq_along(clustered_cars)) {
  cat("Cluster", i, ":\n")
  print(clustered_cars[[i]])
}
