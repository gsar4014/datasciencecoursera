corr <- function(directory, threshold = 0){
  completedataframe <- complete(directory)
  thresholddataframe <- completedataframe[completedataframe$nobs > threshold,]
  threshold_datafiles <- dir(paste(directory), full.names = TRUE)[
    thresholddataframe$id]
  thresholddatasensors <- lapply(threshold_datafiles, function(x) 
    read.csv(x))
  threshold_data_frames <- lapply(thresholddatasensors, function(x)
    data.frame(x))
  correlations_vector <- sapply(threshold_data_frames, function(x)
    cor(x$nitrate, y = x$sulfate, use = "complete.obs"))
  correlations_vector
  
}