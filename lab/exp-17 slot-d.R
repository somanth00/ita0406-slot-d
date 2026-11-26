# Load Titanic package
library(titanic)

# Load dataset
data(titanic_train)

# Remove missing Age values
age_data <- na.omit(titanic_train$Age)

# Create Histogram
hist(
  age_data,
  main="Titanic Passenger Age Histogram",
  xlab="Age",
  ylab="Frequency",
  col="skyblue",
  border="black"
)