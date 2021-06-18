add2 <- function(x,y){
  x + y
}

above10 <- function(z){
  use <- z > 10
  z[use]
  
}

above <- function(z,n = 10){
  use <- z > n
  z[use]
}
# n = 10 specifies default

column_mean <- function(x, removeNA = T){
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(x[,i], na.rm = removeNA)
  }
  means
}

