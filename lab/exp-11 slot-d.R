data <- data.frame(
  Name=c("Ram","Sam","Ravi"),
  Marks=c(80,90,75)
)

write.csv(data,"student.csv",row.names=FALSE)

student_data <- read.csv("student.csv")

print(student_data)