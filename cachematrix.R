## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL

set <- function(y){
               matrix <<- y
               inv <<- NULL
        }

get <- function(){
                ## returning matrix
                matrix
        }
        
setInverse <- function(inverse) {
                ## storing inverse 
                inv <<- inverse
        }
        
getInverse <- function() {
                ## returns the inverse
                inv
        }

list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
inv <- x$getInverse()

if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        
data <- x$get()

m <- solve(data) %*% data

x$setInverse(m)

m 
 
}
