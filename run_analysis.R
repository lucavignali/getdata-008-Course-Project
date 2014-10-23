## This script is about creating a tidy data set from the 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
## according to the following STEPS:
## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names. 
## 5 From the data set in step 4, creates a second, independent tidy data set 
##      with the average of each variable for each activity and each subject.
## It is assumed to run the script at the same directory level of UCI HAR Dataset
## The output is saved in a tidydata directory at the same level of UCI HAR Dataset


## STEP 0 - Create the Directory structure to host the Tidy Data
        initdir <- getwd()
        if (!file.exists("tidydataset")) dir.create("tidydataset")
        if (!file.exists(".\\tidydataset\\Inertial Signals"))
                dir.create(".\\tidydataset\\Inertial Signals")
        if (!file.exists("tidydata")) dir.create("tidydata")
        setwd("tidydata")
        if (!file.exists("all")) dir.create("all")
        if (!file.exists(".\\all\\Inertial Signals")) 
                dir.create(".\\all\\Inertial Signals")
        setwd(initdir)



## STEP 1 - Merges the training and the test sets to create one data set.
## All script must be at the same directory level of UCI HAR Dataset.
source("merge_datasets.R")

## STEP 2 - Extracts only the measurements on the mean and standard deviation 
## for each measurement
source("mean_std.R")