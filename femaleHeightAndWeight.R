#######################################################
##  Author: Tristan Gray  #############################
##  Date: Feb 2, 2021   ###############################
##  Purpose: Female Height & Weight Analysis  #########
#######################################################
## Please Use Freely Unless Stated Otherwise  #########
#######################################################

#Import Data from .CSV
fHtWt <- read.csv(file.choose())

hist(fHtWt$Height)
hist(fHtWt$Weight)

mu <- mean(fHtWt$Weight)
sdev <- sd(fHtWt$Weight)

dist <- dnorm(fHtWt$Weight, mean = mu, sd = sdev)
df <- data.frame("Wt" = fHtWt$Weight, "Density" = dist)
library(ggplot2)
ggplot(df, aes(x = Wt, y = Density)) + geom_point()

dnorm(x=150, mean=mu, sd=sdev)

cdf <- pnorm(fHtWt$Weight, mu, sdev)
df <- cbind(df, "CDF_LowerTail" = cdf)
ggplot(df, aes(x=fHtWt$Weight, y=CDF_LowerTail)) + geom_point()

#This illustrates what proportion of the curve is more than 150lbs
pnorm(150, mean=mu, sd=sdev, lower.tail=FALSE)
#What is the probability of a woman's weight being between 125-150lbs
pnorm(150, mean=mu, sd=sdev) - pnorm(125, mean=mu, sd=sdev)

pnorm(200, mean=mu, sd=sdev) - pnorm(175, mean=mu, sd=sdev)

pnorm(175, mean=mu, sd=sdev) - pnorm(150, mean=mu, sd=sdev)