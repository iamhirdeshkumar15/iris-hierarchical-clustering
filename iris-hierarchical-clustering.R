View(iris) 
# Load and prepare the data
iris1 <- iris
iris1
iris1$Species <- NULL
iris1
# Calculate Euclidean distance
d <- dist(iris1, method = "euclidean")

# Perform hierarchical clustering
hfit <- hclust(d, method = "average")

# Cut the dendrogram into 3 clusters and display the groups
grps <- cutree(hfit, k = 3)
grps

# Plot dendrogram and highlight clusters
plot(hfit)
rect.hclust(hfit, k = 3, border = "red")

