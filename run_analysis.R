#Tidying up Accelerometer Data

library(dplyr)
library(plyr)
library(sqldf)
library(reshape2)
featurevec <- read.table("features.txt", sep = " ")
View(featurevec)


##Processing on Training Data!!

#Processing Training Data Observations
trainx <- read.table("train/X_train.txt", col.names = featurevec$V2)
trainxNames <- names(trainx)
meanSTDFilter <- grep("[Mm]ean\\.|[Ss]td\\.", trainxNames)
meanSTDColsToSelect <- trainxNames[meanSTDFilter]
trainxFiltered <- trainx[,meanSTDColsToSelect] #Extract only Mean and STD features

#Extracting Training Data Column Headers
trainy <- read.table("train/y_train.txt")
trainsubj <- read.table("train/subject_train.txt") #

#Formed Training Data Frame
trainingDataXY <- cbind(trainy, trainxFiltered)
names(trainingDataXY)[1] <- "ActivityLabel"
trainingDataComplete <- cbind(trainsubj, trainingDataXY)
names(trainingDataComplete)[1] <- "Subject"


##Processing on Testing Data!!

#Processing Testing Data Observations
testx <- read.table("test/X_test.txt", col.names=featurevec$V2)
testxFiltered <- testx[,meanSTDColsToSelect] #Extract only Mean and STD features

#Extracting Testing Data Column Headers
testy <- read.table("test/y_test.txt")
testsubj <- read.table("test/subject_test.txt") #

#Formed Testing Data Frame
testingDataXY <- cbind(testy, testxFiltered)
names(testingDataXY)[1] <- "ActivityLabel"
testingDataComplete <- cbind(testsubj, testingDataXY)
names(testingDataComplete)[1] <- "Subject"

#Combining both data frames
completeAccelSTDMeanData <- arrange(rbind(testingDataComplete, trainingDataComplete), Subject)

#Renaming Activity Labels to be more descriptive
activitylabels <- read.table("activity_labels.txt")
completeAccelSTDMeanData$ActivityLabel <- gsub("1", activitylabels$V2[1], completeAccelSTDMeanData$ActivityLabel)
completeAccelSTDMeanData$ActivityLabel <- gsub("2", activitylabels$V2[2], completeAccelSTDMeanData$ActivityLabel)
completeAccelSTDMeanData$ActivityLabel <- gsub("3", activitylabels$V2[3], completeAccelSTDMeanData$ActivityLabel)
completeAccelSTDMeanData$ActivityLabel <- gsub("4", activitylabels$V2[4], completeAccelSTDMeanData$ActivityLabel)
completeAccelSTDMeanData$ActivityLabel <- gsub("5", activitylabels$V2[5], completeAccelSTDMeanData$ActivityLabel)
completeAccelSTDMeanData$ActivityLabel <- gsub("6", activitylabels$V2[6], completeAccelSTDMeanData$ActivityLabel)

View(completeAccelSTDMeanData)

#Forming Data frame for displaying the average of each variable for each subject and activity
completeAccelDataMelt <- melt(completeAccelSTDMeanData, id=c("Subject", "ActivityLabel"), measures.vars=names(completeAccelSTDMeanData))
completeAccelDataMean <- dcast(completeAccelDataMelt, Subject + ActivityLabel ~ variable ,mean)
View(completeAccelDataMean)


