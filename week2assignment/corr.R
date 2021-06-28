corr <- function(directory, threshold = 0){
  completedataframe <- complete(directory)
  thresholddataframe <- completedataframe[completedataframe$nobs > threshold,]
  threshold_datafiles <- dir(paste(directory), full.names = TRUE)[
    thresholddataframe$id]
  thresholddataframes <- lapply(threshold_datafiles, function(x) 
    read.csv(x))
  correlations_vector <- lapply(thresholddataframes, function(x)
    corr(unlist(x)))
  correlations_vector
  
}