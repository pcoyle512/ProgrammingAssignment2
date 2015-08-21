## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinversematrix<-function(solved) inv<<-solved
  getinversematrix<-function() inv
  list(set=set, get=get, setinversematrix=setinversematrix, getinversematrix=getinversematrix)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinversematrix()
  if(!is.null(inv)){
    message("getting cached data - inverse matrix")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinversematrix(inv)
  inv
}