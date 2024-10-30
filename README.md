# Iris Hierarchical Clustering

This project demonstrates hierarchical clustering analysis on the famous Iris dataset using R. It includes calculating Euclidean distances, performing clustering with average linkage, and visualizing the resulting clusters in a dendrogram.

## Project Overview

The aim of this project is to cluster observations from the Iris dataset based on their features (sepal length, sepal width, petal length, petal width) using hierarchical clustering techniques. The dendrogram generated provides insights into the similarity between different samples of iris flowers.

## Dataset

The [Iris dataset] is a classic dataset in machine learning, containing 150 observations of iris flowers. Each sample has the following features:
- Sepal Length
- Sepal Width
- Petal Length
- Petal Width

The dataset is included in R by default.

## Analysis Steps

1. **Data Preparation**: Removed the `Species` column, as it is categorical and not required for clustering.
2. **Distance Calculation**: Computed the Euclidean distance matrix between samples.
3. **Hierarchical Clustering**: Performed clustering with average linkage.
4. **Visualization**: Plotted a dendrogram and highlighted clusters with red borders.

## Code

The script for the analysis is as follows:

```r
# Load and prepare the data
iris1 <- iris
iris1$Species <- NULL

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

