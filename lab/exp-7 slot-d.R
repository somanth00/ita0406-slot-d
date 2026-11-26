# Factors of a number
n <- 12

for(i in 1:n) {
  if(n %% i == 0) {
    print(i)
  }
}

# Generate 10 random integers
x <- sample(-50:50,10)
print(x)

# FizzBuzz
for(i in 1:100) {
  if(i %% 15 == 0) {
    print("FizzBuzz")
  } else if(i %% 3 == 0) {
    print("Fizz")
  } else if(i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}