# Create Advertising Dataset
advertising <- data.frame(
  Spend=c(100,200,300,400,500,600,700,800,900,1000),
  Sales=c(20,25,30,35,40,45,50,55,60,65)
)

print(advertising)

# Linear Regression
model <- lm(Sales ~ Spend,data=advertising)

print(summary(model))

# Prediction
new_data <- data.frame(Spend=750)

prediction <- predict(model,new_data)

print(prediction)

# Plot
plot(
  advertising$Spend,
  advertising$Sales,
  main="Advertising Regression",
  xlab="Spend",
  ylab="Sales"
)

abline(model,col="red")