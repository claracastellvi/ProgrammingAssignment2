## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x=matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function () inv
  list (set=set, get=get, setinv=setinv, getinv=getinv) 
}

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.


cacheSolve <- function(x,...) {
  ## This function return a matrix that is inverse of "x"
  inv <- x$getinv()
  if(!is.null(inv)) {
    message ("getting cached data")
    return(inv) 
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinv(inv)
  inv
}

=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
