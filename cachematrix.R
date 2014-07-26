## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix<-function(input=matrix(c(),nrow=0,ncol=0)) ## Function Definition : Function with initialized input matrix
{
	outerinverse<-NULL ## Setting the outerinverse value to NULL
	set<-function(mat) ## Set function definition : will be used to set value for the input matrix
	{
		input<<-mat ## setting the value of input
		outerinverse<<-NULL ## setting outerinverse value to NULL
	}
	get<-function() input ## Get function that will retuen the input matrix
	setinverse <- function(innerinverse)    ## setinverse function definition that will accept innerinverse matrix as input
	{
		outerinverse<<-innerinverse ## setting the outerinverse matrix to input value of the function
	}
	getinverse<- function() ## getinverse function definition
	{
		outerinverse  ## function will return the outerinverse value
	}
list(set=set,get=get,getinverse=getinverse,setinverse=setinverse) ## makeCacheMatrix will return a list of functions
}




## Write a short comment describing this function

cacheSolve<-function(input, ...){  ## Function Definition that takes input matrix

		matcache<-input$getinverse() ## Calling getInverse() function to get the cache value
	
		if(!is.null(matcache)) ## Checking if cache is null or not
		{
			message("Cached Data") ## Printing message
			return(matcache) ## returning cached inverse matrix
		}
		else
		{
			data<-input$get() ## getting input matrix from the makeCacheMatrix get function
			inverse<-solve(data) ## Calculating the inverse of the input matrix
			print(inverse) ## print the inverse value
		
		}
}
