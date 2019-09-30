
      ## This function computes the inverse of the special "matrix" 
      ## returned by MakeCacheMatrix.
      ## If the inverse has already been calculated (and the matrix has not changed),
      ## then the cachesolve function should retrieve the inverse from the cache.

cachesolve <- function(x, ...) {
      i <- x$getinverse()
      if (!is.null(i)) {
            message("getting cached data")
            return(i)
      }
      data <- x$get()
      i <- solve(data, ...)
      x$setinverse(i)
      i
}