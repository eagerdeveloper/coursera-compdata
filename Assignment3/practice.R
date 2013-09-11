library("lattice")
package ? lattice

x<- rnorm(100)
y<-x + rnorm(100, sd=0.5)
f <- gl(2, 50, labels=c("Group 1", "Group 2"))
xyplot( y ~ x | f)