## Following functions serves for caching the inverse matrix

## This function creates a list of functions : get() - returns the value of matrix, setinv() - saves the value of inverse matrix
## getinv() - returns the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
   get <- function() x
   setinv <- function(inverse) inv<<-inverse
   getinv <- function() inv
  
  list(get=get, setinv=setinv, getinv=getinv)
}

## This function by calling functions from list a, verifies if the inverse was computed before, if not it does it. As an output
## it returs the value of the inverse matrix 

cacheSolve <- function(a, ...) {
  inv <- a$getinv()
  if (! is.null(inv)) return(inv)
  Matrix <- a$get()
  inv <- solve(Matrix)
  a$setinv(inv)
  inv
}
