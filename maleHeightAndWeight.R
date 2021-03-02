#######################################################
##  Author: Tristan Gray  #############################
##  Date: Jan 28, 2021   ##############################
##  Purpose: Male Height & Weight Analysis  ###########
#######################################################
## Please Use Freely Unless Stated Otherwise  #########
#######################################################

#Import Data from .CSV
mHtWt <- read.csv(file.choose())

head(mHtWt, 100)

#Plot the relationship between Height & Weight
plot(mHtWt$Weight, mHtWt$Height, main="Male Weight & Height", xlab="Weight (lbs)", ylab="Height (in)", pch=19, cex=0.2)

#Add fit lines
abline(lm(mHtWt$Height~mHtWt$Weight), col="red") #regression line y~x

(res <- cor.test(mHtWt$Weight, mHtWt$Height, method="pearson"))
