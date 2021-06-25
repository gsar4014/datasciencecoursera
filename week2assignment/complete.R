complete <- function(directory, id = 1:332){
  pollutantfiles <- dir(paste(directory), full.names = TRUE)[id]
  completedatafiles <- lapply(pollutantfiles, function(x) 
    complete.cases(read.csv(x)))
  completedata <- lapply(completedatafiles, function(x) sum(unlist(x)))
  completedata
  completedatatable <- data.frame(completedata)
  completedatatable <- t(completedatatable)
  row.names(completedatatable) <- id
  colnames(completedatatable) <- "nobs"
  completedatatable
}