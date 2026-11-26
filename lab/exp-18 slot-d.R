x <- c(10,20,30,40,50)
y <- c(15,25,35,45,55)

# Boxplot
boxplot(x,main="Boxplot")

# Histogram
hist(x,main="Histogram")

# Bar Plot
barplot(x,main="Bar Plot")

# Line Chart
plot(x,type="l",main="Line Chart")

# Scatter Plot
plot(
  x,y,
  main="Scatter Plot",
  xlab="X Values",
  ylab="Y Values"
)