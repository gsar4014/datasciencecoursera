pollutantmean <- function(directory, pollutant, id = 1:332){
  pollutantfiles <- dir(paste(directory), full.names = TRUE)[id]
  pollutantdata <- lapply(pollutantfiles, function(x) read.csv(x)[pollutant])
  pollutantlist <- unlist(pollutantdata)
  missingvalues <- is.na(pollutantlist)
  pollutantvalues <- pollutantlist[!missingvalues]
  mean(pollutantvalues)
}