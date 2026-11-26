data(ChickWeight)

print(head(ChickWeight))
print(summary(ChickWeight))

# Sort
sorted_data <- ChickWeight[
  order(ChickWeight$weight),
]

print(head(sorted_data))

if(!requireNamespace("reshape2",quietly=TRUE)) {
  install.packages("reshape2")
}

library(reshape2)

# Melt
melt_data <- melt(
  ChickWeight,
  id.vars=c("Chick","Time","Diet")
)

print(head(melt_data))

# Cast by Diet
cast_data <- dcast(
  melt_data,
  Diet ~ Time,
  value.var="value",
  fun.aggregate=mean
)

print(cast_data)