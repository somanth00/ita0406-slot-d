mylist <- list(
  numbers=c(10,20,30),
  names=c("Ram","Sam","Ravi"),
  marks=matrix(1:9,nrow=3),
  message="Welcome to R Programming",
  addition=function(a,b) {
    return(a+b)
  }
)

print(mylist)
print(mylist$numbers)
print(mylist$names)
print(mylist$marks)
print(mylist$message)
print(mylist$addition(10,20))