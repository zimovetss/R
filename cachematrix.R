## Put comments here that give an overall description of what your
## functions do

##  function matrix i

makeCacheMatrix <- function(x = matrix()) {
    i2 <- NULL
  set <- function(y) {
          x <<- y
          i2 <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i2 <<- inverse
  getinverse <- function() i2
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##  function solve the problem


cacheSolve <- function(x, ...) {
  i2 <- x$getinverse()
  if (!is.null(i2)) {
          message("getting cached data")
          return(i2)
  }
  data <- x$get()
  i2 <- solve(data, ...)
  x$setinverse(i2)
  i2
}
