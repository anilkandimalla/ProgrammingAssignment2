

## Below function get the matrix from the Cache

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


## Below Function will calculate the inverse by use of solve function
#It is Assumed by default we calculate the inverse of det(matrix) !=0 matrix

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
