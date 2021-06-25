complete <- function(directory, id = 1:332){
  pollutantfiles <- dir(paste(directory), full.names = TRUE)[id]
  completedatafiles <- lapply(pollutantfiles, function(x) 
    complete.cases(read.csv(x)))
  completedatatable <- lapply(completedatafiles, function(x) sum(unlist(x)))
  completedatatable
}