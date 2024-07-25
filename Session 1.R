### Session 1 Exercises 



#Exercise 1.1
#a) Create 30 random numbers of a uniform distribution between 1 and 3.
#b) Create 30 random numbers of a uniform distribution between 1 and 3, rounded to integers (so you should have only numbers 1, 2, and 3.
#c) Check the proportion of 1, 2, and 3 (you don’t need a code, just look at it). Do you feel to have the same probability for each number? You can repeat #the random number generation a few times. Explain what you see in a comment.
#d) If not, try to solve the above problem (to get the same proportion of 1, 2, and 3).


#Solution 1.1
#a
ran <- runif(30, 1, 3)
#b
ranround <- round(runif(30, 1, 3), 0)
ranround
#c
# We see more 2 than 1 and 3.
# Numbers in [1, 1.5) are rounded to 1
# Numbers in [1.5, 2.5) are rounded to 2
# Numbers in [2.5, 3] are rounded to 3
# Thereby on the average half of the numbers will be 2.
# And only 1/4 of them will be 1 or 3.
#d
ranround <- round(runif(30, 0.5, 3.5), 0)

#Exercise 1.2
#a) Create a vector months with values Feb, Apr, Jun, Jul, Aug. Print the vector.
#b) Sort months by using sort(). What order do we have?
#c) Create a vector with the months in the right order: month_levels <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug","Sep", "Oct", "Nov", "Dec")
#d) Create a factor mymonths using the vector months and the levels in month_levels. Print mymonths.
#e) Sort mymonths. Comparing results in b), d) and e), why factors are useful tools?

#Solution 1.2
#a
months <- c("Feb",  "Jun", "Jul", "Apr", "Aug")
months
#b
sort(months)
#They are in alphabetical order
#c
month_levels <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
#d
mymonths <- factor(months, levels = month_levels)
mymonths
#e
sort(mymonths)
#They are in the order of months, neither in the original order, nor in alphabeticel order. 

