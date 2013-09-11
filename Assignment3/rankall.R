rankall <- function(outcome, num = "best") {
  
  ## Read outcome data
  deathrate_outcomes <- c("heart attack", "heart failure", "pneumonia")
  
  ## Check that state and outcome are valid
  error <-is.na(match(outcome,deathrate_outcomes))
  if(error == TRUE)
    stop("invalid outcome")
    
  all_outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  all_states <- sort(unique(all_outcomes[,"State"], incomparables = FALSE))

  # Set death rate column
  if(outcome == "heart attack")
    deathrate_column <- 11
  else if(outcome == "heart failure")
    deathrate_column <- 17
  else if(outcome == "pneumonia")
    deathrate_column <- 23
  
  # Set numeric
  all_outcomes[,deathrate_column] <- as.numeric(all_outcomes[,deathrate_column])
  
  ## For each state, find the hospital of the given rank
  hospital<-vector("character", length(all_states))
  j <- 1
  for(state in all_states) 
  {
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

      hospital[j] <- ordered_filter[1,1]     
    }
    else
    {
      ordered_filter <- 
        good_filter[order(good_filter[,2], good_filter[,1]), ]
            
      if(num == "best")
        hospital[j] <- ordered_filter[1,1]     
      else
        hospital[j] <- ordered_filter[as.numeric(num), 1]
    }
    j <- j + 1
  }
  
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name
  x <- data.frame(hospital, state = all_states)
  row.names(x) <- all_states
  x
}
