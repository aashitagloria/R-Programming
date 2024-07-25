### Mock Mid-term

#Exercise A
#Solve the following equation. Think also on finding all roots.
#(𝑥^6) − 5(𝑥^4) − (𝑒^−𝑥) = 2
#Find the minimum of the following function in the (-15, 15) and in the (-50, 50) intervals.
#𝑓(𝑥) = (𝑥^6) − 5(𝑥^4) − (𝑒^−𝑥)
#Based on your results, the minimum found in the (-15, 15) interval is a global minimum?

#Solution A
equo <- function(x){
  x^6-5*x^4-exp(-x)-2
}

uniroot(equo, c(-50, 50))
library(rootSolve)
uniroot.all(equo, c(-50, 50))

equomin <- function(x){
  x^6-5*x^4-exp(-x)
}
ExA1<-optim(c(0), equomin, method = "Brent", lower = -15, upper = 15)
ExA1
ExA2<-optim(c(0), equomin, method = "Brent", lower = -50, upper = 50)
ExA2

x <- seq(-17.3, 15, by=0.01)
y <- equo(x)
plot(x, y, type='l')

###############################################################################

#Exercise B
#Create three different functions:
#• One that calculate the variance of a variable.
#• One that calculate the covariance between two variables.
#• One that calculate the correlation between two variables.
#Hint: Remember that the correlation is the ratio between the covariance of the variables and the product of the standard deviations of them.
#Also, remember that the covariance of x and y is the mean of x times y minus the product of the mean of x times the mean of y. It can also be calculated as #the sum of the product of differences of x and the mean of x and y and the mean of y, divided by the number of observations.
#Also, remember that the standard deviation is the squared root of the variance. Finally, the variance of x is the mean of the squared values of x minus the #square of the mean of x. The variance of x is equalto [𝑚𝑒𝑎𝑛(𝑥^2) − (𝑚𝑒𝑎𝑛(𝑥))^2]. 
#It can also be calculated as the sum of the squared differences of x and the mean of x, divided by the number of observations. 
#Note that while the correlation function that you created returns the same value of the “cor” function of R, there is a difference between the “var” function and your variance and the “cov” function #and your covariance. This is because R divides by n-1 while you divide by n. The n-1 is a correction used for small samples. 

#Solution B

#####This function provide the variance of a variable x
myvariance<-function(x){
  sum((x-mean(x))^2)/length(x)
}

#myvariance(x)

#####This function provide the covariance between x and y
mycovariance<-function(x,y){
  sum((x-mean(x))*(y-mean(y)))/length(x)
}

#mycovariance(x, y)

#####This function provide the correlation between x and y
mycorrel<-function(x,y){
  mycovariance(x,y)/sqrt(myvariance(x)*myvariance(y))
}

#mycorrel(x,y)

###############################################################################

#Exercise C
#(1) Create a vector (give it the name v) having only odds values and running from 3 until 37.
#(2) Using the function matrix(), create a vector of zeros, called z, having the same length of v.
#(3) Using the for loop and the if condition, fill the vector z such that if the generic element of v is <=14 then its corresponding element in z is equal #to 1. Else if the generic element of v is >14 and <=26 then its corresponding element in z is equal to 2. Finally, if the generic element of v is >26 and #<=40 then its corresponding element in z is equal to 3.
#(4) Consider that a random normal number can be generated using rnorm(1). Similarly, 10 random normal numbers can be generated using rnorm(10).
#(5) Create a matrix (give it the name matrice) having 3 rows and 20 columns and filling its elements using random normal numbers.
#(6) Create a matrix, called CorrelationMatrix, having 3 rows and 3 columns with all elements equal to zero. Now, fill the matrix CorrelationMatrix such #that the generic element in the ith row and jth column is the correlation between the ith row of matrice and the jth row of matrice.
#For this exercise, you can use the built-in cor() function or your own correlation function built in Exercise B.

#Solution C
#(1) Create a vector (give it the name v) having only odds values and running from 3 until 37.
v<-seq(3,37,by=2)
#(2) Using the function matrix(), create a vector of zeros, called z, having the same length of v.
z<-matrix(0,length(v),1)
#(3) Using the for loop and the if condition, fill the vector z such that if the generic element of v is <=14 then its corresponding element in z is equal to 1. Else if the generic element of v is >14 and <=26 then its corresponding element in z is equal to 2. Finally, if the generic element of v is >26 and <=40 then its corresponding element in z is equal to 3.
for(i in 1:length(v)) {
  if(v[i]<=14){z[i]<-1}
  else if(v[i]>14&&v[i]<=26){
    z[i]<-2}
  else{z[i]=3
  }
}
rbind(t(v),t(z))
#(4) Consider that a random normal number can be generated using rnorm(1). Similarly, 10 random normal numbers can be generated using rnorm(10).
set.seed(4072);rnorm(10)
#(5) Create a matrix (give it the name matrice having 3 rows and 20 columns and filling its elements using random normal numbers.
set.seed(42)
matrice<-matrix(rnorm(3*20),3,20)
#(6) Create a matrix, called CorrelationMatrix, having 3 rows and 3 columns with all elements equal to zero. Now, fill the matrix CorrelationMatrix such that the generic element in the ith row and jth column is the correlation between the ith row of matrice and the jth row of matrice.
CorrelationMatrix<-matrix(NA,nrow(matrice),nrow(matrice))
for(i in 1:nrow(matrice)){
  for(j in 1:nrow(matrice)){
    CorrelationMatrix[i,j]<-cor(matrice[i,],matrice[j,]) 
  }  
}

###############################################################################

#Exercise D (Find minimum)
#Create a function that finds the minimum value of a vector (you are not allowed to use the built-in min function; you need a for loop).
#Create a function that finds the element of a vector containing the minimum (you will need the previous code + you have to add one more variable where you #store the element number).Create a function that finds the maximum value of a vector (very similar to the minimum).

#Solution D
#Create a function that finds the minimum value of a vector
FindtheMin<-function(x){
  mymin<-x[1]
  for(i in 2:length(x)){
    if(x[i]<mymin){
      mymin<-x[i]
    }
  }
  mymin
}

#Create a function that finds the element of a vector containing the minimum

FindElementMin<-function(x){
  mymin<-x[1]
  element<-1
  for(i in 2:length(x)){
    if(x[i]<mymin){
      mymin<-x[i];element<-i
    }
  }
  element
}


#Create a function that finds the maximum value of a vector
FindtheMax<-function(x){
  mymax<-x[1]
  for(i in 2:length(x)){
    if(x[i]>mymax){
      mymax<-x[i]
    }
  }
  mymax
}

###############################################################################

#Exercise E (vlookup)
#Suppose you have a data frame called m1 whose first column identifies the employee while the second column identifies the salary of the employee:
#set.seed(4123)
#m1<-as.data.frame(cbind(sample(LETTERS),round(1500+2000*runif(length(LETTERS)))))
#colnames(m1)<-c("Employee" ,"Salary")
#Now suppose that m2 is another matrix, sharing the same dimensions of m1, but the order of Employees is different from m1:
#m2<-as.data.frame(cbind(sample(LETTERS),matrix(0,length(LETTERS),1)))
#colnames(m2)<-c("Employee" ,"Salary")


#Solution E
######################## Exercise vlookup #############

set.seed(4123)
m1<-as.data.frame(cbind(sample(LETTERS),round(1500+2000*runif(length(LETTERS)))))
colnames(m1)<-c("Employee" ,"Salary")
m2<-as.data.frame(cbind(sample(LETTERS),matrix(0,length(LETTERS),1)))
colnames(m2)<-c("Employee" ,"Salary")

#Create a function that fills the second column of m2 with the appropriate salary as in m1

vlookup<-function(m1,m2){
  for(i in 1:nrow(m2)){
    for(j in 1:nrow(m1)){
      if(m1[j,1]==m2[i,1]){
        m2[i,2]=m1[j,2]
      }
    }
  }
  m2
}
