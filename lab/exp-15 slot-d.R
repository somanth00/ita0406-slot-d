data(iris)

# Dimensions
print(dim(iris))

# Summary
print(summary(iris))

# Standard deviation
print(sapply(iris[,1:4],sd))

# Quantiles
print(quantile(iris$Sepal.Length))

# Group by Species
print(aggregate(. ~ Species,data=iris,mean))

# Pivot table
print(xtabs(Sepal.Length ~ Species,data=iris))

# Categorical grouping
iris$Category <- cut(
  iris$Sepal.Length,
  breaks=3,
  labels=c("Low","Medium","High")
)

print(iris)

print(table(iris$Category))
print(table(iris$Species,iris$Category))