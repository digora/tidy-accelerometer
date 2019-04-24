# Tidy Accelerometer Data Code Book

## Overview
* The Tidy Accelerometer Dataset contains the data of the mean and std values and observations from training and testing data along with labels. In total it has 10299 observations (rows) and 75 variables (columns)
* The Tidy Accelerometer Dataset for the averaged values of each variable for each subject and activity has 180 observations (rows) and 75 variables (columns)

##Activities
###The following activities were performed by the volunteer subjects to produce motion data
*LAYING
*SITTING
*STANDING
*WALKING
*WALKING_DOWNSTAIRS
*WALKING_UPSTAIRS

## Variables
### The variables selected are the features that contain the mean and std values for each reading. This accounts for angular data containing mean and std values as well.

### The following is the list of variables in the datasets:
* "Subject"
* "ActivityLabel"
* "tBodyAcc.mean...X"
* "tBodyAcc.mean...Y"
* "tBodyAcc.mean...Z"
* "tBodyAcc.std...X"
* "tBodyAcc.std...Y"
* "tBodyAcc.std...Z"
* "tGravityAcc.mean...X"
* "tGravityAcc.mean...Y"
* "tGravityAcc.mean...Z"
* "tGravityAcc.std...X"
* "tGravityAcc.std...Y"
* "tGravityAcc.std...Z"
* "tBodyAccJerk.mean...X"
* "tBodyAccJerk.mean...Y"
* "tBodyAccJerk.mean...Z"
* "tBodyAccJerk.std...X"
* "tBodyAccJerk.std...Y"
* "tBodyAccJerk.std...Z"
* "tBodyGyro.mean...X"
* "tBodyGyro.mean...Y"
* "tBodyGyro.mean...Z"
* "tBodyGyro.std...X"
* "tBodyGyro.std...Y"
* "tBodyGyro.std...Z"
* "tBodyGyroJerk.mean...X"
* "tBodyGyroJerk.mean...Y"
* "tBodyGyroJerk.mean...Z"
* "tBodyGyroJerk.std...X"
* "tBodyGyroJerk.std...Y"
* "tBodyGyroJerk.std...Z"
* "tBodyAccMag.mean.."
* "tBodyAccMag.std.."
* "tGravityAccMag.mean.."
* "tGravityAccMag.std.."
* "tBodyAccJerkMag.mean.."
* "tBodyAccJerkMag.std.."
* "tBodyGyroMag.mean.."
* "tBodyGyroMag.std.."
* "tBodyGyroJerkMag.mean.."
* "tBodyGyroJerkMag.std.."
* "fBodyAcc.mean...X"
* "fBodyAcc.mean...Y"
* "fBodyAcc.mean...Z"
* "fBodyAcc.std...X"
* "fBodyAcc.std...Y"
* "fBodyAcc.std...Z"
* "fBodyAccJerk.mean...X"
* "fBodyAccJerk.mean...Y"
* "fBodyAccJerk.mean...Z"
* "fBodyAccJerk.std...X"
* "fBodyAccJerk.std...Y"
* "fBodyAccJerk.std...Z"
* "fBodyGyro.mean...X"
* "fBodyGyro.mean...Y"
* "fBodyGyro.mean...Z"
* "fBodyGyro.std...X"
* "fBodyGyro.std...Y"
* "fBodyGyro.std...Z"
* "fBodyAccMag.mean.."
* "fBodyAccMag.std.."
* "fBodyBodyAccJerkMag.mean.."
* "fBodyBodyAccJerkMag.std.."
* "fBodyBodyGyroMag.mean.."
* "fBodyBodyGyroMag.std.."
* "fBodyBodyGyroJerkMag.mean.."
* "fBodyBodyGyroJerkMag.std.."
* "angle.tBodyAccMean.gravity."
* "angle.tBodyAccJerkMean..gravityMean."
* "angle.tBodyGyroMean.gravityMean."
* "angle.tBodyGyroJerkMean.gravityMean."
* "angle.X.gravityMean."
* "angle.Y.gravityMean."
* "angle.Z.gravityMean."

## Variable Units
* Subject pertains to the ID assigned to a specific volunteer.
* ActivityLabel pertains to the label given to the activity performed by the Subject.
* The rest of the values that originate from the gyroscope and accelerometer data are 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
