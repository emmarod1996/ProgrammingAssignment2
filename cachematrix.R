## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m_inv <- NULL## the matrix we will obtain is stated

set <- function(y){
  y <<- mat
  m_inv <<-  NULL
}

get <- function() {mat}
setInv <- function(computed_inverse) {m_inv <<- computed_inverse}
getInv <- function() {m_inv}

list(set=set, get = get ,setInv=setInv, getInv=getInv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
         m_inv <- mat$getInv()
  if (!is.null(m_inv)) {
    message("getting cache data")
    return(m_inv)
  }
  
  data <- mat$get()
  m_inv <- solve(data,...)
  x$setInv(m_inv)
  m_inv
        ## Return a matrix that is the inverse of 'x'
}
