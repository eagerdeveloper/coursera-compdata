getmonitor<-function(id, directory, summarize=FALSE)
{
  ## 'id' is a vector of length 1 indicating the monitor ID
  ## number. The user can specify 'id' as either an integer, a
  ## character, or a numeric.
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'summarize' is a logical indicating whether a summary of
  ## the data should be printed to the console; the default is
  ## FALSE
  
  ## Your code here
  
  zeros<-""
  as.numeric(id)

  if(id < 10)
    zeros <- "00"
  if(id>9 && id<100) 
    zeros <- "0"

  filename <- paste(directory, "/", zeros, as.character(id), ".csv", sep="")

  d <- read.csv(filename)
  if(summarize == TRUE)
    print(summary(d))
  d
}