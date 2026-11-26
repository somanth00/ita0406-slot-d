# Install package if needed
if(!requireNamespace("nnet",quietly=TRUE)) {
  install.packages("nnet")
}

library(nnet)

data(iris)

# Random Split 80/20
set.seed(123)

index <- sample(
  1:nrow(iris),
  size=0.8*nrow(iris)
)

train_data <- iris[index,]
test_data <- iris[-index,]

# Logistic Regression
model <- multinom(
  Species ~ Petal.Length + Petal.Width,
  data=train_data,
  trace=FALSE
)

# Prediction
prediction <- predict(model,test_data)

print(prediction)

# Confusion Matrix
confusion_matrix <- table(
  Actual=test_data$Species,
  Predicted=prediction
)

print(confusion_matrix)

# Accuracy
accuracy <- mean(prediction == test_data$Species)

print(accuracy)

# Accuracy Percentage
accuracy_percentage <- accuracy*100

print(paste("Accuracy:",accuracy_percentage,"%"))