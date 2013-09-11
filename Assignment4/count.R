count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  if(is.null(cause))
    stop("Error")
  
  ## Check that specific "cause" is allowed; else throw error
  causes = c("asphyxiation", "blunt force", "other", "shooting", 
             "stabbing", "unknown")
  error <-is.na(match(cause,causes))
  if(error == TRUE)
    stop("Error")
  
  ## Read "homicides.txt" data file
  homicides <- readLines("homicides.txt")
  
  ## Extract causes of death
  searchTerm <- paste("Cause:", cause)
  
  ## Return integer containing count of homicides for that cause
  length(grep(searchTerm, homicides, ignore.case = TRUE))
}
