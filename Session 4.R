### Session 4 

#Exercise 4.1: Median
#We are looking for the optimal position of the unique bus station in a village with only one street. House numbers represent the distance of each house #from the border of the village. We would like to put the bus station at the point from where the sum of walking distance to each house is minimal.
#Test your solution with the following house numbers:
#housenumbers <- c(5, 7, 9)
#housenumbers <- c(5, 7, 9, 55)
#housenumbers <- c(5, 7, 9, 550)

# Solution 1 Median
housenumbers <- c(5, 7, 9, 560)
e<-c()
busstation <- function(a){
  pos<-a[1]
  e<-pos-housenumbers
  sum(abs(e))
}
myrelation<-optim(c(1),busstation, method = "Brent", lower = 0, upper = 10)
myrelation

###################################################################################

#Exercise 4.2: Mean
#We are looking for the optimal position of the unique bus station in a village with only one street. House numbers represent the distance of each house #from the border of the village. We would like to put the bus station at the point from where the sum of squared walking distance to each house is minimal. #Find the optimum using optim().
#Test your solution with the following house numbers:
#housenumbers <- c(5, 7, 9)
#housenumbers <- c(5, 7, 9, 55)
#housenumbers <- c(5, 7, 9, 550)


# Solution 2 Mean
housenumbers <- c(5, 7, 9, 550)
e<-c()
busstation2 <- function(a){
  pos<-a[1]
  e<-pos-housenumbers
  sum(e^2)
}
myrelation<-optim(c(1),busstation2, method = "Brent", lower = 0, upper = 1000)
myrelation

###################################################################################

#Exercise 4.3: Optim with 2 parameters
#Impose set.seed(123)
#Generate a vector x (of dimension n=100) using a uniform distribution between 3 and 10.
#Moreover, generate a constant c = 7 and a scalar b = .9.
#Moreover, generate the following variable y = c + b ∗ x + rnorm(length(x))
#Now, suppose we do not know the existence of this relation. Find it using a function that, using the vector para, minimizes the sum of squared errors that #is the sum of squared of e = y − para[1] − para[2] ∗ x.
#Show the results and make some meaningful comments.

# Solution 3 optim with two parameters
set.seed(123)
x=runif(100,3,10)
c=7
b=0.9
y=c+b*x+rnorm(length(x))

plot(x,y)

e=c()
myfunSimpReg<-function(para){
  p<-para[1]
  pr<-para[2]
  for (i in 1:length(x)){
    e[i]=y[i]-p-pr*x[i]
    }
  sum(e^2)
}

myresults1<-optim(c(1,3), myfunSimpReg)
print(myresults1)

