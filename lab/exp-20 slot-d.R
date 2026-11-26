data(ChickWeight)

# Dataset
chick_data <- ChickWeight

chick_data$Diet <- as.factor(chick_data$Diet)

print(head(chick_data))

# Multiple Regression
model <- lm(
  weight ~ Time + Diet,
  data=chick_data
)

print(summary(model))

# Prediction
predicted <- predict(model,chick_data)

print(head(predicted))

# Calculate Error
actual <- chick_data$weight

error <- mean((actual-predicted)^2)

print(error)

# Display Actual and Predicted
result <- data.frame(
  Actual=actual,
  Predicted=predicted
)

print(head(result))