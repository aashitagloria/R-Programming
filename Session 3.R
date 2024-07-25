### PWR Session 3 Exercises 

# Exercise 3.1
#After running the below code, what will be the value of a, b, and count? Try to find out before running the code and check your idea by running the code.

increment <- function(x, inc = 1) {
  x <- x + inc
  x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)
a
b
count 

#Solution 3.1
# Value of a = 7
# Value of b = 6
#Value of count = 7


###########################################

#Exercise 3.2
#Create a function pow_four(): it takes one argument and returns that number to the power of four. Call this newly defined function with 3 as input.

# Solution 3.2
# Create a function pow_four()
pow_four <- function(a) {
  a^4
}

# Call the function
pow_four(4)

############################################

#Exercise 3.3
#Next, create a function dif_of_abs(), that takes two arguments and returns the difference of the absolute values of both arguments.
# Call the function dif_of_abs() with arguments -5 and 3 afterwards.
# Change the function dif_of_abs as the second argument is optional, with a default value of 0.

# Solution 3.3
# Create a function dif_of_abs()
dif_of_abs <- function(a, b) {
  abs(a) - abs(b)
}

# Use the function
dif_of_abs(-5, 3)


dif_of_abs <- function(a, b = 0) {
  abs(a) + abs(b)
}

############################################

#Exercise 3.4
#Write a for loop to calculate the sum of all elements in a vector called "numbers". Print the final sum.


# Solution 3.4
# Vector Creation
numbers <- c(10, 20, 30, 40, 50)

# Calculate Sum using a For Loop
sum <- 0
for (i in numbers) {
  sum <- sum + i
}

# Output
print(sum)

############################################

#Exercise 3.5
#Write a for loop to calculate the factorial of a given number. The number is stored in a variable called "n". Print the factorial.

# Solution 3.5
# Number
n <- 5

# Factorial Calculation using a For Loop
factorial <- 1
for (i in 1:n) {
  factorial <- factorial * i
}

# Output
print(factorial)

############################################

#Exercise 3.6
#Define the following vector of marks: 16, 9, 13, 15, 12, 17, 14. For each mark print a message and the mark. The message is “Learn more!” if the mark is #worse than 10, “OK” if the mark is between 10 and 16, “Very good!” otherwise. 

# Solution 3.6

marks <- c(16, 9, 13, 15, 12, 17, 14)

for (grade in marks) {
  if (grade < 10 ) {
    print("Learn more!")
  } else if (grade < 16){
    print("OK")
  } else{  
    print("Very good!")
  }
  print(grade)
}

############################################

#Exercise 3.7
#The partial sum series is defined as the sum of reciprocals of the odd positive integers up to a specified number of terms, which is stored in the variable #"num_terms". At the beginning, num_terms should be 1000.
#a) Write a function that calculate the reciprocals of the odd positive integers up to a specified number of terms and stores it in a vector called ROPI.
#b) Calculate the sum of the ROPI vector.
#c) Solve the problem directly with a for loop.

# Solution 3.7
# Number of Terms
num_terms <- 1000

# Function
recip = function(n){
  for (i in 1:n){
    ROPI[i] <<- 1/(2 * i - 1)
  }
}

#Alternatively
ROPI <- c()
recip = function(n){
  for (i in 1:n){
    ROPI[i] <- 1/(2 * i - 1)
  }
}

#call the function
recip(num_terms)

#The sum
sum(ROPI)

# Partial Sum Series Limit Calculation using a For Loop
series_sum <- 0
for (i in 1:num_terms) {
  term <- 1 / (2 * i - 1)
  series_sum <- series_sum + term
}

# Output
print(series_sum)

############################################

#Exercise 3.8
#a) Store 13 in variable lucky.
#b) Write a function that calculates 4*(number-10), where number is the input of the function and store in result. Return result.
#c) Within the function, store result-1 in lucky.
#d) What is the value of lucky after calling the function?

# Solution 3.8
lucky = 13
myfun = function(x){
  result <- 4*(x-10)
  return(result)
  lucky <- result -1
}

myfun(lucky)
lucky

############################################

#Exercise 3.9
#a) Store 13 in variable lucky.
#b) Write a function that calculates 4*(number-10), where number is the input of the function and store in result. Return result.
#c) Within the function, store result-1 in the global scope lucky variable.
#d) Call the function and check the value of lucky variable.

# Solution 3.9
lucky = 13
myfun = function(x){
  result <- 4*(x-10)
  lucky <<- result -1
  return(result)
}

myfun(lucky)
lucky
