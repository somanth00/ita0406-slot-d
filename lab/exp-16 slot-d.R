data(USArrests)

# Summary statistics
print(summary(USArrests))

# State with largest rape arrests
print(rownames(USArrests)[which.max(USArrests$Rape)])

# Maximum and minimum murder rates
print(max(USArrests$Murder))
print(min(USArrests$Murder))

# Correlation
print(cor(USArrests))

# Above median assault and bottom 25% murder
median_assault <- median(USArrests$Assault)
bottom_murder <- quantile(USArrests$Murder,0.25)

result <- USArrests[
  USArrests$Assault > median_assault &
    USArrests$Murder <= bottom_murder,
]

print(result)

# Histogram
hist(USArrests$Murder,main="Murder Histogram")

# Density
plot(density(USArrests$Murder),main="Murder Density")

# Scatter plot
plot(
  USArrests$Assault,
  USArrests$Murder,
  main="Assault vs Murder",
  xlab="Assault",
  ylab="Murder"
)

# Bar graph
barplot(
  USArrests$Murder,
  names.arg=rownames(USArrests),
  las=2,
  main="Murder Rates by State",
  cex.names=0.5
)