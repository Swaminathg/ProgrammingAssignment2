## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

inv <- matrix(data = NA , nrow = 1 , ncol = 1)
## inv <- NULL

## inv <- list()
## length(inv) <- 4
## dim(inv) <- c(2,2)

set <- function(y) {

x <<- y
## inv <<- NULL
## inv <<- matrix()

inv <<- matrix(data = NA , nrow = 1 , ncol = 1)

}

get <- function() x
setinv <- function(invr) inv <<- invr
getinv <- function() inv
list(set = set , get = get , getinv = getinv , setinv = setinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
if(!is.na(inv[ , ])) {
## if(complete.cases(inv)) = 'TRUE' {

message("getting cached data")
return(inv)

}

data <- x$get()
inv <- solve(data, ...)
x$setinv(inv)
inv

}
