# Write a R program to take input from the user (name and age) and display the values. Also print the version of R installation.
name=readline(prompt = "What is your name: ")
age=readline(prompt = "What is your age: ")
print(paste('My name is',name, 'I am',age, 'years old.')
print(R.version.string)

#Write a R program to get the details of the objects in memory.
name='Python'
n1=10
n2=0.5
nums=c(10,20,30,40,50,60)
print(ls())
print('Details of the objects in memory:')
print(ls.str())

#Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 20 to 60 and sum of numbers from 51 to 91.
print('Sequence of numbers from 20 to 50:')
print(seq(20,50))
print('Mean of numbers from 20 to 60:')
print(mean(20:60))
print('Sum of numbers from 51 to 91:')
print(sum(51:91))

print('Random number between 1 and 20')
print(rnorm(1,20))

#Write a R program to create a vector which contains 10 random integer values between -50 and +50
v=sample(-50:50, 10, replace = TRUE)
print('Content of the vector:')
print('10 random integer values between -50 and 50:')
print(v)

#Write a R program to get the first 10 Fibonacci numbers.
Fibonacci<-numeric(10)
Fibonacci[1]<-Fibonacci[2]<-1
for (i in 3:10) Fibonacci[i]<-Fibonacci[i-2]+Fibonacci[i-1]
print('First 10 Fibonacci numbers:')
print(Fibonacci)

#Write a R program to get all prime numbers up to a given number (based on the sieve of Eratosthenes).
prime_numbers<-function(n){
  if (n>=2) {
    x=seq(2,n)
    prime_nums = c()
    for (i in seq(2, n)) {
      if (any(x==i)){
        prime_nums = c(prime_nums, i)
        x = c(x[(x %% i) !=0], i)
      }
      
    }
    return(prime_nums)
  }
  else
  {
    stop('Input number should be at least 2.')
  }
}
prime_numbers(12)


#Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.
for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print('FizzBuzz')}
  else if (n%%3 == 0) {print('Fizz')}
  else if (n%%5 == 0) {print('Buzz')}
  else print(n)
  
}

#Write a R program to extract first 10 english letter in lower case and last 10 letters in upper case and extract letters between 22nd to 24th letters in upper case.

#Note: Use built-in datasets letters and LETTERS.
print('First 10 letters in lower case:')
t = head(letters, 10)
print(t)
print('Last 10 letters in upper case:')
t = tail(LETTERS, 10)
print(t)
print("Letters between 22nd to 24th letters in upper case:")
e = tail(LETTERS[22:24])
print(e)
print(letters)
print(LETTERS)
print(date)
date()

#Write a R program to find the factors of a given number.
print_factors = function(n) {
  print(paste("The factors of", n, 'are:'))
  for (i in 1:n){
    if ((n%%i) == 0) {
      print(i)
    }
  }
}
print_factors(4)
print_factors(7)
print_factors(12)

#Write a R program to find the maximum and the minimum value of a given vector.
nums = c(10, 20, 30, 40, 50, 60)
print("Original vector:")
print(nums)
print("The maximum value in the vector is:")
max(nums)
print("The minimum value in the vector is:")
min(nums)
print(paste("The maximum value of the nums vector is:", max(nums)))
print(paste("The minimum value of the nums vector is:", min(nums)))

#Write a R program to get the unique elements of a given string and unique numbers of vector.
str1 = 'The quick brown fox jumps over the lazy dog.'
print('Original vector(string)')
print(str1)
print('Unique elements in the said vector:')
print(unique(tolower(str1)))
nums=c(1,2,2,3,4,4,5,6)
print('Original vector(number)')
print(nums)
print('Unique elements of the said vector:')
print(unique(nums))

#Write a R program to create three vectors a,b,c with 3 integers. Combine the three vectors to become a 3×3 matrix where each column represents a vector.
#Print the content of the matrix.
a<-c(1,2,3)
b<-c(4,5,6)
c<-c(7,8,9)
m<-cbind(a,b,c)
print("Contents of the said matrix:")
print(m)

#Write a R program to create a list of random numbers in normal distribution and count occurrences of each value.
#Note: Sample random numbers in normal distribution
n=floor(rnorm(1000,50,100))
print('List of random numbers in normal distribution:')
print(n)
t=table(n)
print('Count occurences of each value:')
print(t)

#Write a R program to read the .csv file and display the content.
movie_data = read.csv('sample movies.csv', header = TRUE, sep = ',')
print('Content of the .csv file:')
print(movie_data)

#Write a R program to create three vectors numeric data, character data and logical data. Display the content of the vectors and their type.
a=c(1,2,5,3,4,0,-1,-3)
b=c("Red", "Green", "White")
c=c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(a)
print(typeof(a))
print(b)
print(typeof(b))
print(c)
print(typeof(c))

#Write a R program to create a 5 × 4 matrix , 3 × 3 matrix with labels and fill the matrix by rows and 2 × 2 matrix with labels and fill the matrix by columns.
m1 = matrix(1:20, nrow = 5,ncol = 4)
print('5x4 matrix:')
print(m1)
cells=c(1,3,5,7,8,9,11,12,14)
rnames=c("Row1", "Row2", "Row3")
cnames=c("Col1", "Col2", "Col3")
m2 = matrix(cells, nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(rnames, cnames))
print('3x3 matrix with labels, filled by rows: ')
print(m2)
print('3x3 matrix with labels, filled by columns: ')
m3 = matrix(cells, nrow=3, ncol=3, byrow = FALSE, dimnames = list(rnames, cnames))
print(m3)

#Write a R program to create an array, passing in a vector of values and a vector of dimensions. Also  provide names for each dimension.
a = array(
  6:30,
  dim = c(4,3,2),
  dimnames = list(
    c('col1', 'col2', 'col3'),
    c('row1', 'row2', 'row3'),
    c('part1', 'part2')
  )
)
print(a)

#Write a R program to create an array with three columns, three rows, and two "tables", taking two vectors as input to the array. Print the array.
v1=c(1,3,5,7)
v2=c(2,4,6,8,10)
array1=array(c(v1,v2), dim = c(3,3,2))
print(array1)

#Write a R program to create a list of elements using vectors, matrices and a functions. Print the content of the list.
l=list(
  c(1,2,2,5,7,12),
  month.abb,
  matrix(c(3,-8,1,-3), nrow = 2),
  asin
)
print('Content of the list:')
print(l)

#Write a R program to draw an empty plot and an empty plot specify the axes limits of the graphic.
print("Empty plot:")
plot.new()
print("Empty plot specify the axes limits of the graphic:")
plot(1, type='n', xlab='', ylab='', xlim=c(0,20), ylim=c(0,20))

#Write a R program to create a simple bar plot of five subjects marks.
marks = c(70, 95, 80, 75)
barplot(marks,
        main = 'Containing marks of 5 subjects',
        xlab = 'Marks',
        ylab = 'Subject',
        names.arg = c('English', 'Science', 'Math', 'Hist'),
        col = 'darkred',
        horiz = FALSE)

#Write a R program to create bell curve of a random normal distribution.
n = floor(rnorm(10000, 500, 100))
t = table(n)
barplot(t)

#Write a R program to compute sum, mean and product of a given vector elements.
v1 = c(10, 30, 20, 50, 50, 38, 59, 69)
sum(v1)
mean(v1)
prod(v1)

#Write a R program to create a list of heterogeneous data, which include character, numeric and logical vectors. Print the lists.
my_list = list(Chr='Python', nums=1:15, flag=TRUE)
print(my_list)

#Write a R program to create a Dataframes which contain details of 5 employees and display the details.
name = c('Wacera', 'Muthoni', 'Aggie', 'Gathoni', 'Leo')
age = c(24, 56, 34, 56, 46)
gender = c('F', 'F', 'F', 'F', 'M')
salary = c(200, 400, 500, 300, 900)
employee_data = data.frame(name, age, gender, salary)
print(employee_data)

#Write a R program to create a Dataframes which contain details of 5 employees and display summary of the data.
name = c('Wacera', 'Muthoni', 'Aggie', 'Gathoni', 'Leo')
age = c(24, 56, 34, 56, 46)
gender = c('F', 'F', 'F', 'F', 'M')
salary = c(200, 400, 500, 300, 900)
employee_data = data.frame(name, age, gender, salary)
print(employee_data)
summary(employee_data)

#Write a R program to create the system's idea of the current date with and without time.
print(date())
print(Sys.Date())
     
