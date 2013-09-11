corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  # 1. Load the other 2 files
  source("complete.R")  
  source("getmonitor.R")
 
  # 2. Get complete cases from each CSV file
  completedata <- complete(directory, 1:332)
  
  # 3. Now get the complete cases > threshold
  datathreshold <- completedata[completedata$nobs > threshold, ]
  
  # 4. Initialize a correlations vector
  cors<-vector("numeric", nrow(datathreshold))

  # 5. Loop through each id and save the correlation
  j<-1
  for(i in datathreshold[,"id"]) 
  {
    data <- getmonitor(i, directory)
    cors[j] <- cor(data$sulfate, data$nitrate, use="complete.obs")
    j <- j + 1
  }
  cors
}

