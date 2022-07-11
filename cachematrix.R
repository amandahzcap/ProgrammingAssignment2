## Function 1 *makeCacheMatrix* 
# Creates a special matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {     ## naming the makeCacheMatrix function, where x is a function argument
                i <- NULL                       ## i is a object in the makeCacheMatrix environment
                set <- function (y) {           ## set the data objects within the function, with argument y
                        x <<- y                 ## assign the input argument to object x of parent environment
                        i <<- NULL              ## assign NULL to m of parent environment; cleans prior values of i. 
                }
                get <- function() x             ## setting "get" as the function(){x} abbreviated; x comes from the parent environment makeCacheMatrix
                setinverse <- function(solve) i <<- solve  ## setting "setinverse" as the setter for SOLVE function, that inverts the matrix; i in the parent environment
                getinverse <- function() i      ## defines getinverse to be able to solve value for object i
            list(set = set,                     ## Assigns the functions as elements within a list(), then returns the list to the parent environment.
                 get = get,                     ## set = set(); get = get(); setinverse = setinverse(); getinverse = getinverse() functions.
                 setinverse = setinverse,
                 getinverse = getinverse)
    }

## Function 2 *cacheSolve* 
## Calculates the inverse of the matrix that was cached 

cacheSolve <- function(x, ...) {               ## Return a matrix that is the inverse of 'x', the ellipsis allow to pass additional arguments
         i <- x$getinverse()                   ## Tries to get the inverse of the matrix x, calling the getinverse function
            if(!is.null(i)) {                  ## check if the result is null
                    message("getting cached data")
                    return(i)                  ## return FALSE if i = NULL or TRUE if there is a previous cached value
            }
            data <- x$get()                    ## if FALSE, cacheSolve gets the matrix from the input
            i <- solve(data, ...)              ## invert the  matrix
            x$setinverse(i)                    ## uses setinverse to set the inverse matrix in the input object 
            i                                  ## print the inverse object
}

