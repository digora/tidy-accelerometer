# tidy-accelerometer run_analysis script explanation

## Processing Details
* The main script aims to process and clean the data gathered from the Accelerometer and Gyroscope sensor data from the Samsung device

## Data Cleaning 
### TidyDataset
* The first part of the processing is to extract all the txt files from the data set provided namely: activity_labels.txt, features.txt, subject_test.txt, X_test.txt, y_test.txt, subject_train.txt, X_train.txt, y_train.txt
* After extracting the raw data into suitable data structures, the script will focus on consolidating the 2 main datasets (training and testing) through the dplyr command rbind(). These 2 datasets where also formed with their respective headers through cbind() and read.table
* After consolidating the dataset per the requirement, the script will select the variables (columns) needed for the dataset. Due to the number of variables in the dataset, using select() and inputting each variable name that is needed by the requirement would be difficult, so we relied on the grep() function and regex string to provide a list of variable names fitting the requirement.

### TidyDataset Averages
* With the consolidated and processed data set, we will use the melt() function in the reshape2 library. Melt will be used to determine the variables to group the variables from (ActivityLabel, Subject)
* After melting, we use the cast() function also from the reshape2 library. Cast will be used to reform the melted data set into a format that will display the average of each variable from each activity and subject.
