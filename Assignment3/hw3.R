##########
# PART 1
##########

outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)

# 1. Add a label to the x-axis that says \30-day Death Rate"

outcome[, 11] <- as.numeric(outcome[, 11])


# 2. Add a title for the histogram that says \Heart Attack 30-day Death Rate"

hist(outcome[, 11], xlab="30-day Death Rate", main="Heart Attack 30-day Death Rate")



##########
# PART 2
##########
# 1. Identify which columns of the data frame contain the 30-day death rate from heart attack, heart failure,
# and pneumonia

# 11 - Heart Attack, 17 - Heart Failure, 23 - Pneumonia


# 2. Coerce these columns to be numeric using the as.numeric function as above. You may receive warnings
# about NAs but that is okay

outcome[,11] <- as.numeric(outcome[,11])
outcome[,17] <- as.numeric(outcome[,17])
outcome[,23] <- as.numeric(outcome[,23])


# 3. Make histograms of the death rates for each outcome and put the histograms on the same plot window.
# This can be done by running par(mfrow = c(3, 1)) before calling hist. This sets the plot window
# to have 3 rows and 1 column.

# 4. For each plot (there should be three plots, one for each outcome) make sure the x-axis label is \30-day
# Death Rate".

# 5. For each plot, set the title of the plot to be the outcome (i.e. heart attack, heart failure, or pneumonia).

# A vector containing 3 rows and 1 column
# Supply this to the device to draw figures in that space


dev.off()
par(mfrow = c(3, 1))

hist(outcome[,11], xlab="30-day Death Rate", main="Heart Attack")
hist(outcome[,17], xlab="30-day Death Rate", main="Heart Failure")
hist(outcome[,23], xlab="30-day Death Rate", main="Pneumonia")

# 6. Each time you call hist, a new plot is constructed using the data to be plotted. However, this makes it
# dicult to compare histograms across outcomes. Set all of the histograms to have the same numerical
# range on the x-axis by using the xlim argument. You can calculate the range of a vector of numbers
# by using the range function.

dev.off()
par(mfrow = c(3, 1))

therange <- range(outcome[,11], outcome[,17], outcome[,23], na.rm = TRUE)

hist(outcome[,11], xlab="30-day Death Rate", main="Heart Attack",xlim=therange)
hist(outcome[,17], xlab="30-day Death Rate", main="Heart Failure",xlim=therange)
hist(outcome[,23], xlab="30-day Death Rate", main="Pneumonia", xlim=therange)



# 1. Instead of plotting the histograms on top of each other, 
# plot them all in a row, side by side.

dev.off()
par(mfrow = c(1, 3))

therange <- range(outcome[,11], outcome[,17], outcome[,23], na.rm = TRUE)

hist(outcome[,11], xlab="30-day Death Rate", main="Heart Attack",xlim=therange)
hist(outcome[,17], xlab="30-day Death Rate", main="Heart Failure",xlim=therange)
hist(outcome[,23], xlab="30-day Death Rate", main="Pneumonia", xlim=therange)


# 2. Using the median and the abline function, draw a vertical line on each 
# histogram at the location of the median for that outcome.

dev.off()
par(mfrow = c(1, 3))

therange <- range(outcome[,11], outcome[,17], outcome[,23], na.rm = TRUE)

median11 <- median(outcome[,11], na.rm=TRUE)
median17 <- median(outcome[,17], na.rm=TRUE)
median23 <- median(outcome[,23], na.rm=TRUE)

hist(outcome[,11], xlab="30-day Death Rate", main="Heart Attack",xlim=therange)
abline(v=median11)

hist(outcome[,17], xlab="30-day Death Rate", main="Heart Failure",xlim=therange)
abline(v=median17)

hist(outcome[,23], xlab="30-day Death Rate", main="Pneumonia", xlim=therange)
abline(v=median23)


# 3. In the title of each histogram, put in parentheses the mean death rate by 
# adding (X¯ =??) where ?? is the actual mean for that outcome. 
# Consult the help page for plotmath to see how to get the X¯ to appear on the plot.

dev.off()
par(mfrow = c(1, 3))

therange <- range(outcome[,11], outcome[,17], outcome[,23], na.rm = TRUE)

median11 <- median(outcome[,11], na.rm=TRUE)
median17 <- median(outcome[,17], na.rm=TRUE)
median23 <- median(outcome[,23], na.rm=TRUE)


hist(outcome[,11], xlab="30-day Death Rate", main=paste("Heart Attack", " (X¯ = ", median11 , ")"),xlim=therange)
abline(v=median11)

hist(outcome[,17], xlab="30-day Death Rate", main=paste("Heart Failure", " (X¯ = ", median17 , ")"),xlim=therange)
abline(v=median17)

hist(outcome[,23], xlab="30-day Death Rate", main=paste("Pneumonia", " (X¯ = ", median23 , ")"), xlim=therange)
abline(v=median23)


# 4. Add a smooth density estimate on top of the histogram. To do this you need to use the density
# function and you need to set prob=TRUE when calling hist.



# 0. Get good data
# 1. Look for min value in all_outcomes[,11]
# 2. Get vector of total min rows
# 3. If 
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
hospital <- read.csv("hospital-data.csv", colClasses = "character")
head(outcome.hospital) <- merge(outcome, hospital, by = "Provider.Number")

death <- as.numeric(outcome.hospital[, 11]) ## Heart attack outcome
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)

head(outcome)

deathrate_outcomes <- c("heart attack", "heart failure", "pneumonia")
deathrate_columns  <- c(11, 17, 23)

all_outcomes[,x$foo[1]]

colnames([all_outcomes])
colnames[11]

x <- list(foo = 1:3, bar = c("heart attack", "heart failure", "pneumonia"))




options(warn=-1)

source("best.R")
best("TX", "heart attack")

best("TX", "heart failure")

best("MD", "heart attack")

best("MD", "pneumonia")

best("BB", "heart attack")

best("NY", "hert attack")

source("http://spark-public.s3.amazonaws.com/compdata/scripts/submitscript.R")


source("rankhospital.R")
rankhospital("MD", "heart attack", "worst")
rankhospital("MD", "heart attack", 4)

rankhospital("TX", "heart failure", 4)

rankhospital("TX", "heart failure", 4000)


submit()


state <- c("AK", "AL")
test <- data.frame(hospital = c("H1", "H2"), state)
row.names(test) <- state   # set row names to be the same as state
test
}

head(rankall("a"), 1)


source("rankall.R")

head(rankall("heart attack", 20), 10)

rankall("hert attack")

tail(rankall("pneumonia", "worst"), 3)

tail(rankall("heart failure"), 10)

head(rankall("heart failure", 4000), 10)


submit()

