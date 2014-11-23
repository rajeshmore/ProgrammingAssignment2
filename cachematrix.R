## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## working
makeCacheMatrix <- function(x = matrix()) {
  # place holder (i) to store inverse matrix
  i <- NULL
  
  #set values for matrix
  set <- function( a ) {
  x <<- a
  i <<- NULL
  }
  #get values from matrix
  get <- function() { x }
  
  #set inverse for matrix
  setinverse <- function(inverse) { i <<- inverse }
  #get inverse of matrix
  getinverse <- function() { i }
  
  # return list
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  # Check if data is availabe in cache or not
  # if true return from cache
  if( !is.null(i) ) {
    message("getting cached data")
    return(i)
  }
  
  # set inverse data
  data <- x$get()
  i <- solve(data,...)  
  #cache inverse value
  x$setinverse(i)
  #return inverse value
  i
  
}

## Testing code 
## x <- matrix(rnorm(9), nrow = 3)          
## xx <- makeCacheMatrix(x)                 
## xx$get()                                  
## cacheSolve(xx)                            
## cacheSolve(xx) 
