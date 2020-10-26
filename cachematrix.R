makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  ## Set initial value of i to NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  ## Assign names to function elements
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  ## If i is previously cached, show cached data
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  ## Use solve function to get inverse matrix value
  i <- solve(data)
  x$setinverse(i)
  i
}## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
