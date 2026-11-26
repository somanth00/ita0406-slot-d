set.seed(123)

x <- rnorm(100,mean=50,sd=10)

print(x)

rounded <- round(x)
counts <- table(rounded)

print(counts)