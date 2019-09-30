 
     ## This function creates a special "matrix" object that can cache its inverse

makecachematrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
            x <<- y
            i <<- NULL
      }
      get <- function() x
      setinverse <- function(inverse) i <<- inverse
      getinverse <- function() i
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}