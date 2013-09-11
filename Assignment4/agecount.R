agecount <- function(age = NULL) {
  ## Check that "age" is non-NULL; else throw error
  if(is.null(age))
    stop("Error")
  
  ## Read "homicides.txt" data file
  homicides <- readLines("homicides.txt")
  
  ## Extract ages of victims; ignore records where no age is
  ## given
  searchTerm <- paste("", age, "years old")
#      print(searchTerm)
#   r <- regexpr(searchTerm, homicides, ignore.case = TRUE)
#   regmatches(homicides, r)
  ## Return integer containing count of homicides for that age
  length(grep(searchTerm, homicides, ignore.case = TRUE))
}