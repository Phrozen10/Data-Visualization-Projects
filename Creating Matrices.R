library(readr)
library(carData)
library(haven)

#set working directory
setwd("~/Desktop/Git/Data Visualization Projects")

#calling Salaries Data files form carData library
data('Salaries')
names(Salaries)

###############################################################################

#create a 10x10 matrix
ma <-matrix(4:63, nrow = 10, ncol = 10)
ma

#calculate row and column means
rowMeans(ma, na.rm=FALSE, dims = 1L)
colMeans(ma, na.rm = FALSE, dims = 1L)

#calculate row and column sd
library(matrixStats)
rowSds(ma, na.rm = FALSE)
colSds(ma, na.rm = FALSE)

#Calculate the mean,mode and max value of salary
mean(Salaries$salary)

#create a mode function
getmode <-function(v) {
  uniqv<-unique(v)
  uniqv[which.max(tabulate(match(v,uniqv)))]
}
#find salary mode
getmode(Salaries$salary)

max(Salaries$salary)
