complete<-function(directory, id=1:332)
{
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases

  # 0 - Create a nobs vector
  nobs<-vector("integer", length(id))
  j <- 1
  
  # 1 - Loop through each id
  for(i in id) 
  {
    # 1b - Figure out file name
    zeros<-""
    as.numeric(i)
    
    if(i < 10)
      zeros <- "00"
    if(i>9 && i<100) 
      zeros <- "0"
    
    filename <- paste(directory, "/", zeros, as.character(i), ".csv", sep="")
    

    # 2 - Get the data
    data <- read.csv(filename)
    
    # 3 - Identify complete(good) cases
    good <- complete.cases(data)

    # 4 - Get the total and store
    nobs[j] <- nrow(data[good,])

    # 5 - Increment nobs counter
    j <- j + 1
  }
  
  out <- data.frame(id, nobs)
  #print(out)
}
