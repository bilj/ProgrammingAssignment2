## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
   inv <- NULL
   get <- function() x
   setinv <- function(inverse) inv<<-inverse
   getinv <- function() inv
  
  list(get=get, setinv=setinv, getinv=getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- a$getinv()
  if (! is.null(inv)) return(inv)
  Matrix <- a$get()
  inv <- solve(Matrix)
  a$setinv(inv)
  inv
}
