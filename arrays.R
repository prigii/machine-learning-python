#Write a R program to convert a given matrix to a 1 dimensional array
m = matrix(1:9, nrow = 3)
m
a = as.vector(m)
a

# Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors.

v1 = c(1:9)
v1
v2 = c(10:18)
v2
m1 = matrix(v1, nrow=3)
m1
m2 = matrix(v2, nrow=3)
m2
a = as.array(m1)
a
a2 = as.array(m2)
m2
m1+m2
m2-m1
m2/m1
m2*m1

v1*v2

k = matrix(v1*v2, nrow = 3)
k

# OR
print("Two vectors of different lengths:")
v1 =  c(1,3,4,5)
v2 =  c(10,11,12,13,14,15)
print(v1)
print(v2)
result = array(c(v1,v2),dim = c(3,3,2))
print("New array:")
print(result)

# Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
dims = c(2,3,4) #define dimensions
a = array(1:24, dim = dims) #create array with 24 elements
a
#or
v = sample(1:5,24, replace = TRUE)
dim(v) = c(2,3,4)
print('3D array:')
v

# Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
v1 = c(1:9)
v1
v2 = c(10:18)
v2
m1 = matrix(v1, nrow=3)
m1
m2 = matrix(v2, nrow=3)
m2
print(m2[2,])

