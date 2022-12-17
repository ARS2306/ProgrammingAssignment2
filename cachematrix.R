## A pair of functions that cache the inverse of a matrix.


##Function 1
##The below function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{

   inv <- NULL

   set <- function👍
   {
    x <<- y
    inv <<- NULL
   }
  
  get <- function() x

  setInverse <- function(solveMatrix) inv <<- solveMatrix
  
  getInverse <- function() inv
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}



##Function 2
## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.



cacheSolve <- function(x, ...)
{
## Its work is to retrun the matrix that is inverse of x.
  inv <- x$getInverse()

  if(!is.null(inv))
  {
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  
  inv <- solve(data)
  
  x$setInverse(inv)
  
  inv      
}
