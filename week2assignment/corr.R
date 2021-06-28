corr <- function(directory, threshold = 0){
  completedataframe <- complete(directory)
  thresholddataframe <- completedataframe[completedataframe$nobs > threshold,]
  thesholddatafiles <- dir(paste(directory), full.names = TRUE)[
    thresholddataframe$id]
  thresholddataframes <- lapply(thresholddatafiles, function(x) 
    read.csv(x))
  correlations_vector <- lapply(thresholddataframes, function(x)
    corr(unlist(x)))
  correlations_vector
  
}