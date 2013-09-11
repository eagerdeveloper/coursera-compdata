#################################################################
# getmonitor 
#################################################################

# Run these to match output
data <- getmonitor(1, "specdata")
head(data)
data <- getmonitor(101, "specdata", TRUE)
head(data)
data <- getmonitor(200, "specdata", TRUE)

source("http://spark-public.s3.amazonaws.com/compdata/scripts/getmonitor-test.R")
getmonitor.testscript()


#################################################################
# complete
#################################################################

source("complete.R")
# Run these to match output
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)


source("http://spark-public.s3.amazonaws.com/compdata/scripts/complete-test.R")
complete.testscript()


#################################################################
# corr 
#################################################################

# Run these to match output
cr <- corr("specdata", 150)
head(cr)
cr <- corr("specdata", 400)
head(cr)
summary(cr)
cr <- corr("specdata", 5000)
summary(cr)
length(cr)
cr <- corr("specdata")
summary(cr)
length(cr)


source("http://spark-public.s3.amazonaws.com/compdata/scripts/corr-test.R")
corr.testscript()