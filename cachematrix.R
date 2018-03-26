## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  
  invmatrix <- NULL
  set <- function(y){
    x <<- y
    invmatrix <<- NULL
    
  }
  get <- function()x
  setinverse <- function(inverse)invmatrix <<- inverse
  getinverse <- funtion()invmatrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix function. 
##It checks to see if the matrix has not been inverse before. If so, it gets the matrix from the cache and skips the computation. Otherwise, it inverts the matrix with the setinverse function.

cacheSolve <- function(x, ...) {
  
  invmatrix <- x$getinverse()
  
  if (!is.null(invmatrix())){
    message ("Getting cached data")
    return(getinverse)
  }
  
  data <- x$get()
  invmatrix <- solve(data, ...)
  x <- setinverse(invmatrix)
  invmatrix  ## Return a matrix that is the inverse of 'x'
  
}
