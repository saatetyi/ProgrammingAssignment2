## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  param_name<-deparse(substitute(x))
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  
  # if the matrix is square
  m<-if (ncol(data)==nrow(data)){
    # if the matrix is invertible
    if (det(data) != 0){
      solve(data)
    }
    else {
      message("Cannot invert the matrix: non-invertible, det(", param_name, ")=0")
      NA
    }
  } else {
    message("Cannot invert the matrix: ", param_name, " is a non-square matrix")
    NA
  }
  
  x$setinv(m)
  m
}