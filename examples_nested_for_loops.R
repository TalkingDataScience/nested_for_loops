### Show in what order the loop iterates through the matrix
mat <- matrix(c(11, 12, 13, 21, 23, 24), nrow=2, byrow = TRUE)
for (i in 1:2){
    for(j in 1:3){
        print(paste0("The item in row ", i, " and column ", j, 
                     ' (index i=',i,',j=', j, ') has value ', mat[i,j]))
    }
}



### Create a multiplication table

# Choose size of the multiplication table
n <- 10

# Create matrix to store the values
mult_table <- matrix(0, n, n)

# Nested for-loop that, for each row, iterates over all columns
for (i in 1:n){
    for (j in 1:n){
        mult_table[i,j] <- i*j
    }
}

# Show the table
mult_table



### Addition of two matrices

# Create matrices to add
A <- matrix(1:9, ncol = 3, byrow = TRUE)
B <- matrix(10, nrow = 3, ncol = 3)

# Create a matrix to store the values after addition
C <- matrix (0, ncol = 3, nrow = 3) 

# Nested for-loop to add the matrices
for (i in 1:3){
    for (j in 1:3){
        C[i, j] <- A[i, j] + B[i, j]
    }
}

# Print result stored in C
print(C)



### hilbert_matrix()

# Create a function with a nested for-loop that generates an arbitrarily 
# large Hilbert matrix
hilbert_matrix <- function(rows=5, cols=5){
    # create a matrix to store the values 
    hilbert = matrix(0, rows, cols)
    
    # nested for loop, calculating each element
    for (i in 1:rows){
        for (j in 1:cols){
            hilbert[i,j] <- 1/(i+j-1) 
        }
    }
    print(hilbert)
}

# Call function to create a 6x4 Hilbert matrix 
hilbert_matrix(6, 4)



### Find the Bornoulli numbers

# Create a nested for-loop to calculate the Bernoulli number n
bernoulli <- function(n) {
    sum <- 0
    for (k in 0:n) {
        for (j in 0:k) {
            sum <- sum + ((-1)^j) * ((j+1)^n) * (choose(k,j)) / (k+1)
        }
    }
    return(sum)
}

# Create a vector 0-10 to we can check the result for these 
numbers <- 0:10

# Use sapply to find all Bernoulli numbers in above vector
bernoulli_numbers <- sapply(numbers, function(n)bernoulli(n=n))

# Show the first Bernoulli numbers 0-10
bernoulli_numbers


