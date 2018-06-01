## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#A.makeCacheMatrix: This function creates a special "matrix" 
#object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  #set where to store the cached result
  inv <- NULL
  #reset x content to y
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  #return the content of x
  get <- function() x
  #calculate inverse and cached as an inverse of x
  setinv <- function(inverse) inv <<- inverse
  #return the inverse cached
  getinv <- function() inv
  #list 
  list(set = set, get = get,
       setinv= setinv,
       getinv = getinv)
}


## Write a short comment describing this function

#B.cacheinverse of a Matrix
# cacheSolve: This function computes the inverse 
# of the special "matrix" returned by makeCacheMatrix 
# above. If the inverse has already been calculated 
# (and the matrix has not changed), then the cachesolve 
# should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  #extract the cached inverse from x
  Inv <- x$getinv()
  
  if(!is.null(Inv)) {
    message("getting cached data")
    return(s)
  }
  
  data <- x$get()
  #calculate inverse of the martrix
  Inv <- solve(data, ...)
  #store the inverse 
  x$setinv(Inv)
  Inv
}