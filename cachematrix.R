## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# This function creates a speical vector of the list of functions which can cache the inverse the matrix. So it essentially:
# 1) Sets and Gets the values of the matrix
# 2) Sets and Gets the values of the inverse of the matrix  
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  
  
  #set the matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  #return the matrix
  get <- function() x
  
  
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

# If the inverse of the matrix is not calculated, this function calculates the inverse from the function makeCacheMatrix, and displays it.
# If the inverse is already in the cache, this function retrieves the inverse matrix and displays it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}
