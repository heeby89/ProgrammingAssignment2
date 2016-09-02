## Write a pair of functions that cache the inverse of a matrix.


## makeCacheMatrix: This function creates a special "matrix" 
## object that can cache its inverse:
## 1. Set the value of the vector
## 2. Get the value of the vector
## 3. Set the value of the mean
## 4. Get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
        inversio <- NULL
        set <- function(y) {
                x <<- y
                inversio <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inversio <<- inverse
        getinverse <- function() inversio
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## cacheSolve: This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already been 
## calculated (and the matrix has not changed), then cacheSolve should 
## retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inversio <= x$getinverse()
        if(!is.null(inversio)) {
                message("getting cached data")
                return(inversio)
        }
        data <- x$get()
        inversio <- solve(mat, ...)
        x$setinverse(inversio)
        inversio
}
