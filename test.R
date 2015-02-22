M<-makeCacheMatrix(matrix(c(1, 2, 3, 4, -5, 6, 7, 8, 9), nrow = 3, ncol = 3))
cacheSolve(M)

M<-makeCacheMatrix(matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3))
cacheSolve(M)

M<-makeCacheMatrix(matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3))
cacheSolve(M)