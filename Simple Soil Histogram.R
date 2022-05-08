#Phrozen10
#Simple Histogram

library(ggplot2)
#set working direcoty
setwd("~/Desktop/Git/Data Visualization Projects")

#read in data
soc <- read.csv('Soil Organic Carbon.csv')

#choose variable to make histogram
x10cm<-soc[,3]

ggplot(data = NULL, aes(x10cm)) +
  geom_histogram(breaks =seq(0,max(x10cm), by=1),
                 col='black',
                 aes(fill=..count..)) +
  scale_fill_gradient('Count', low='blue', high='green') +
  labs(title = 'Histogram for Soil Organic Carbon(SOC) at 10cm', x='SOC(%)', y='Count')