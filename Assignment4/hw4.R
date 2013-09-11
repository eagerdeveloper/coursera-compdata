homicides <- readLines("homicides.txt")


source("count.R")
count("asphyxiation")
count("other")

num <- count("unknown")
print(num)

count("blunt force")
count("shooting")
count("stabbing")

source("http://spark-public.s3.amazonaws.com/compdata/scripts/submitscript4.R")
submit()

homicides[1:10]

source("agecount.R")
agecount(3)

grep
grepl

regexpr
gregexpr

sub
gsub

regexec