library(lattice)
library(latticeExtra)
package ?lattice
library(help=lattice)
library("~/latticeExtra/R/latticeExtra")
data(environmental)
?environmental
head(environmental)
xyplot(ozone ~ radiation, data = environmental)

xyplot(ozone ~ radiation, data = environmental, main="Ozone vs Radiation")
xyplot(ozone ~ temperature, data = environmental)

summary(environmental$temp)

temp.cut <- equal.count(environmental$temp, 4)
temp.cut
xyplot(ozone ~ radiation | temp.cut, data = environmental, main="Ozone vs Radiation")

xyplot(ozone ~ radiation | temp.cut, data = environmental, 
       layout = c(1,4), as.table = TRUE)

xyplot(ozone ~ radiation | temp.cut, data = environmental, as.table = TRUE)

xyplot(ozone ~ radiation | temp.cut, data = environmental, 
       as.table = TRUE, 
       panel = function (x, y, ...)
       {
         panel.xyplot(x, y, ...)
         fit <- lm ( y ~ x)
         panel.abline(fit)
       })

xyplot(ozone ~ radiation | temp.cut, data = environmental, 
       as.table = TRUE, 
       panel = function (x, y, ...)
       {
         panel.xyplot(x, y, ...)
         panel.loess(x, y)
       }, xlab="Solar Radiation", ylab = "Ozone(pdb)",
       main="Ozone vs Radiation")



wind.cut <- equal.count(environmental$wind, 4)
wind.cut

xyplot(ozone ~ radiation | temp.cut * wind.cut, data = environmental, 
       as.table = TRUE, 
       panel = function (x, y, ...)
       {
         panel.xyplot(x, y, ...)
         panel.loess(x, y)
       }, xlab="Solar Radiation", ylab = "Ozone(ppb)",
       main="Ozone vs Radiation")


splom(~ environmental)
histogram(~ temperature, data = environmental)

histogram(~ temperature | wind.cut, data = environmental)
histogram(~ ozone | wind.cut, data = environmental)
histogram(~ ozone | temp.cut * wind.cut, data = environmental)


plot(0, 0, main = expression(theta == 0), 
     ylab = expression(hat(gamma) == 0),
     xlab = expression(sum(x[i] * y[i], i == 1, n)))
     
x<- rnorm(100)
hist(x, xlab = expression("The mean(" * bar(x) * ") is " * 
                            sum(x[i]/n, i==1, n)))

x<- rnorm(100)
y <- x + rnorm(100, sd = 0.5)
plot(x, y, 
     xlab = substitute(bar(x) == k, list(k=mean(x))),
     ylab = substitute(bar(y) == k, list(k=mean(y))))


par(mfrow = c(2,2))
for (i in 1:4)
{
  x<-rnorm(100)
  hist(x, main = substitute(theta == num, list(num = i)))
}

rpois(10, 20)

ppois(2,2)

sample(letters, 4)

sample(1:10, 5, replace = FALSE)

dev.list

x<-1:100
e<-rnorm(100,0,1)
y<- 1.5 - 3*x + e

plot(x,y)


x<rnorm(100)
y<- x + rnorm(100)
par(las=1)
plot(x,y)

par(las=2)
plot(x,y)

graphics.off()

x1<-rnorm(10)
y1<-rnorm(10)
points(x1, y1, col="red")

pdf("file=testRplot.pdf")
x<-rnorm(100)
hist(x)
dev.off()


library(lattice)
library(nlme)
xyplot(distance ~ age | Subject, data = Orthodont)

xyplot(distance ~ age | Subject, data = Orthodont, type = "b")


graphics.off()
png()
dev.off()

gzfile()


library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

set.seed(1)
rpois(5, 2)

plot(0, 0, main = substitute(theta))