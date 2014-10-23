## STEP 2 - Extracts only the measurements on the mean and standard deviation 
## for each measurement. The script is at the same level of UCI HAR Dataset

## Extract and save the mean of each measurement. X_all is a data set of
## 561 variables, 10299 observations. features.txt is a description
## of the 561 variables (columns) of X_all.txt.
## y_all.txt includes the activity for each of the 10299 observations.
## activity_labels is the description of each activity

## Identify the measures that are related to mean and std among all 561 variables
## described in features.txt.
feat <- read.table(".\\UCI HAR Dataset\\features.txt")
ifeatmean <- grep("mean", feat$V2)
ifeatstd <- grep("std", feat$V2)

## Load the previously created merged train+test data set x and y.
X_all <- read.table(".\\tidydata\\all\\X_all.txt")
labels <- read.table(".\\tidydata\\all\\y_all.txt")
act_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")

## Extraxt from X_all the mean and std and add the activity names as first column.
## in both X_mean and X_std.
labels_name <- as.data.frame(as.character(act_labels[labels[,1],"V2"]))
colnames(labels_name) <- "Activity"
X_mean <- X_all[,ifeatmean]
X_std <- X_all[,ifeatstd]
names(X_mean) <- feat[ifeatmean,"V2"]
names(X_std) <- feat[ifeatstd,"V2"]
X_mean <- cbind(labels_name,X_mean)
X_std <- cbind(labels_name,X_std)

## Load the subject identifier.
subject_all <- read.table(".\\tidydata\\all\\subject_all.txt")

## Calculate the required average of both X_mean and X_std aggregated by 
## activity name and subject identifier.
X_mean_avg <- aggregate(X_mean[,2:47], by = list(X_mean$Activity, subject_all[,"V1"]), mean)
X_std_avg <- aggregate(X_std[,2:34], by = list(X_std$Activity, subject_all[,"V1"]), mean)
names(X_mean_avg)[1:2] <- c("Activity", "Subject")
names(X_std_avg)[1:2] <- c("Activity", "Subject")

## Write the obtained data sets in two files using the required write.table and
## row.name settings.
write.table(X_mean_avg, file = ".\\tidydataset\\X_mean_avg.txt", row.name=FALSE)
write.table(X_std_avg, file = ".\\tidydataset\\X_std_avg.txt", row.name=FALSE)







