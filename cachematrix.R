##I Put together a basic Matrix that I set uniquely. 

## This function creates a unique matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}
My solution
makeCacheMatrix <-function(x=matrix()){
   inv <-NULL
   set<-function(y) {
     x<<-y
     inv<<-NULL
 }
 get <-function() x
 SetInverse<-function(inverse)inv<<-inverse
 getInverse<-function()inv
 list(set=set,
      get=get,
      setInverse=setInverse,
      getInverse=getInverse)
 }     

##this should mke the inverse on the unique matrix created above.

cacheSolve <- function(x, ...) {
   inv <-x$getInverse()
   if (!is.null(inv)) {
          message("getting cached data")
          return(inv)
}          
mat <-Xget$()
inv<- solve(mat, ...)
x$setInverse(inv)
inv
}
> source('~/Rprogassign2/Rprogassign2/cachematrix.R')
> my_matrix<-makeCacheMatrix(matrix(1:4, 2, 2))
> my_matrix$get()
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> my_matrix$getInverse()
NULL
> cacheSolve(my_matrix)
     [,1] [,2]
[1,]   -2  1.5
[2,]    1 -0.5
> setwd("~/Rprogassign2/Rprogassign2")
> setwd("~/Rprogassign2/Rprogassign2")
