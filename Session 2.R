### Session 2 Exercises 
# Exercise 2.1
#a) Put the numbers 31 to 60 in a vector named P and in a matrix with 6 rows and 5 columns named Q.
#b) Create a matrix Qt where you fill first the first row, then the second, and so on.


#Solution 2.1
#a
P <- c(seq(31, 60, 1))
P

Q <- matrix(seq(31, 60, 1), ncol=5)
Q

#b
Qt <- matrix(seq(31, 60, 1), ncol=5, byrow = TRUE)
Qt

#Exercise 2.2
#a) Construct three random normal vectors of length 100. Call these vectors x1, x2 and x3.
#b) Make a data frame called t with three columns (called a, b and c) containing respectively x1, x1+x2 and x1+x2+x3.
#c) Call the following functions for this data frame: plot(t) and sd(t). Can you understand the results? (Short comment starting with # is welcome.)
#d) Modify sd(t) to get the expected results about the three variables in data frame t.


#Solution 2.2
#a
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- rnorm(100)

#b
t<- data.frame(a=x1, b=x1+x2, c=x1+x2+x3)
t

#Exercise 2.3
#Create a vector using a sequence going from 21 to 120. Give it the name “a”.
#Define b as the length of a.
#Define d the 5th element of the vector a.
#Define f the vector containing the elements from the 2nd until the 6th.
#Define g the vector containing the 1st , 3rd and 7th elements of a.
#Create a vector, call it h, containing the sequence of values of “a” from 1 until 100 every 4 observations.
#Define i the vector containing the elements bigger than 24 and smaller than 29.
#Create a matrix (give it the name l) with 25 rows and 4 columns containing the element of the vector a.
#Define m the vector containing the elements of the second column of l.
#Define n the vector containing the elements of the third row of l.
#Define o the vector containing the elements included from row 6 until row 12 and from column 2 until column 3 of l.

#Solution 2.3
# Create a vector using a sequence going from 21 to 120. Give it the name “a”.
a<-seq(21,120) # this does the same aa<-21:120

# Define b as the length of a.
b<-length(a)
b

#Define d the 5th element of the vector a.

d<-a[5]

# Define f the vector containing the elements from the 2nd until the 6th.

f<-a[2:6]

# Define g the vector containing the 1st , 3rd and 7th elements of a.

g<-a[c(1,3,7)]

# Create a vector, call it h, containing the sequence of values of “a” from 1 until 100 every 4 observations.

h<-a[seq(1,100,by=4)]

# Define i the vector containing the elements bigger than 24 and smaller than 29.

i<-a[a>24&a<29]

# Create a matrix (give it the name l) with 25 rows and 4 columns containing the element of the vector a.

l<-matrix(a,25,4) # this makes the transpose of l:  t(l)

# Define m the vector containing the elements of the second column of l.

m<-l[,2]

# Define n the vector containing the elements of the third row of l.

n<-l[3,]

# Define o the vector containing the elements included from row 6 until row 12 and from column 2 until column 3 of l.

o<-l[6:12,2:3]

