## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 #initalizing the matrixinverse value to NULL
        matrixinverse <- NULL
        y <- NULL
        #writing a set function
        set <- function(y){
                x <<- y 
                matrixinverse <- NULL
        }
        get <- function(){
                x  #function to get the request 
                }
        setmatrix <- function(matrx){
                matrixinverse <<- matrx  # function to set the matrixinverse in cache
                }
        getmatrix <- function(){
                matrixinverse
                }
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         matinverse <- x$getmatrix()
        if(!is.null(matinverse)) {
             message("getting cached data")
             return(matinverse)
        }
        data <- x$get()
        x$set(data)  # to cache the input matrix
        matinverse <- solve(data)
        x$setmatrix(matinverse)
        matinverse
}
