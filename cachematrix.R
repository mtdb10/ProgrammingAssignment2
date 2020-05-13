## Hi, this 2 functions want to cache the inverse of a matrix

## Hi, this function has the ability to cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(x){
                original <<- x
                inverse <<- NULL
        }
        get <- function() return(original)
        setinv <- function(inv) inverse <<- inv
        getinv <- function() return(inverse)
        return(list(set = set, get = get, setinv = setinv, getinv = getinv))

}


## this function calculates the inverse of the matrix created above

cacheSolve <- function(x, ...) {
        original <- x
        inverse <- original$getinv()
        if(!is.null(inverse)){
                message("getting cache data...")
                return(inverse)
        }
        data <- original$get()
        inverse <- solve(data, ...)
        orginal$setinv(inverse)
        retun(inverse)
}
