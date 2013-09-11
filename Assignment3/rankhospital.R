rankhospital <- function(state, outcome, num = "best") {

  ## Read outcome data
  all_outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  #hospital <- read.csv("hospital-data.csv", colClasses = "character")
  
  deathrate_outcomes <- c("heart attack", "heart failure", "pneumonia")
  all_states <- unique(all_outcomes[,"State"], incomparables = FALSE)
 
  ## Check that state and outcome are valid
   error <-is.na(match(outcome,deathrate_outcomes))
   if(error == TRUE)
     stop("invalid outcome")

   error <-is.na(match(state,all_states))
   if(error == TRUE)
    stop("invalid state")
  
  ## Return hospital name in that state with lowest 30-day death
  ## rate
  # Set death rate column
  if(outcome == "heart attack")
    deathrate_column <- 11
  else if(outcome == "heart failure")
    deathrate_column <- 17
  else if(outcome == "pneumonia")
    deathrate_column <- 23
  
  # Set numeric
  all_outcomes[,deathrate_column] <- as.numeric(all_outcomes[,deathrate_column])
  
  # Filter outcomes by state
  filter <- 
    all_outcomes[all_outcomes[,"State"] == state, c(2,deathrate_column)]
  
  # Get all hospital names with min value
  
  good <- complete.cases(filter)
  good_filter <- filter[good,]
    
  if(num == "worst")
  {
    ordered_filter <- 
      good_filter[order(-good_filter[,2], good_filter[,1]), ]
    #head(ordered_filter)
    ordered_filter[1,1]     
  }
  else
  {
    ordered_filter <- 
      good_filter[order(good_filter[,2], good_filter[,1]), ]

    #print(head(ordered_filter))

    if(num == "best")
      ordered_filter[1,1]     
    else
      ordered_filter[as.numeric(num), 1]
  }
}
