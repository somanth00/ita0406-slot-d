exam_data <- data.frame(
  name=c("Ram","Sam","Ravi","John"),
  score=c(85,60,90,45),
  attempts=c(1,2,1,3),
  qualify=c(TRUE,TRUE,TRUE,FALSE)
)

print(exam_data)

# Extract
print(exam_data$name)
print(exam_data[1,])

# Add column
exam_data$grade <- c("A","B","A","C")
print(exam_data)

# Add row
new_row <- data.frame(
  name="Raj",
  score=75,
  attempts=2,
  qualify=TRUE,
  grade="B"
)

exam_data <- rbind(exam_data,new_row)
print(exam_data)

# Sort
sorted_data <- exam_data[order(exam_data$score),]
print(sorted_data)

# Save
write.csv(exam_data,"exam_data.csv",row.names=FALSE)