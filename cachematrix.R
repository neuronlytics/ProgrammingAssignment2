## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function
# Below function creates a matrix that is capable of caching its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  set = function(y) {
    
    x <<- y
    inv <<- NULL
    
  }
  get = function() x
  set_inv = function(inverse)  inv <<- inverse
  get_inv = function() inv
  list(set = set, get = get, set_inv = set_inv, get_inv = get_inv)
  
}


## Write a short comment describing this function
# Below function creates the inverse of the matrix created by the above function.
  # The function will access the cache and retrive the inv from it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv = x$get_inv2()
  if(!is.null(inv)) {
    message('Getting cached data!')
    return(inv)
  }
  mat = x$get()
  inv = solve(mat, ...)
  x$set_inv2(inv)
  inv
}
