##### Merging the training and the test sets to create one data set. #####

## As the test data and train data are the same data type referred to 
## different population, the merging can be done by appending test to 
## training observation.

## Assumptions: the script run_analysis.R is at the same 
## level of the UCI HAR Dataset directory


## Merge subject: train before test
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
subject_all <- rbind(subject_train,subject_test)
write.table(subject_all, ".\\tidydata\\all\\subject_all.txt", 
            row.names = FALSE, col.names = FALSE)

## Merge X: train before test
X_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
X_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
X_all <- rbind(X_train,X_test)
write.table(X_all,".\\tidydata\\all\\X_all.txt")

## Merge Y: train before test
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
y_all <- rbind(y_train,y_test)
write.table(y_all,".\\tidydata\\all\\y_all.txt")

## Merge body_acc_x: train before test
body_acc_x_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_x_train.txt")
body_acc_x_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_x_test.txt")
body_acc_x_all <- rbind(body_acc_x_train,body_acc_x_test)
write.table(body_acc_x_all, ".\\tidydata\\all\\Inertial Signals\\body_acc_x_all.txt")

## Merge body_acc_y: train before test
body_acc_y_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_y_train.txt")
body_acc_y_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_y_test.txt")
body_acc_y_all <- rbind(body_acc_y_train,body_acc_y_test)
write.table(body_acc_y_all, ".\\tidydata\\all\\Inertial Signals\\body_acc_y_all.txt")

## Merge body_acc_z: train before test
body_acc_z_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_acc_z_train.txt")
body_acc_z_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_acc_z_test.txt")
body_acc_z_all <- rbind(body_acc_z_train,body_acc_z_test)
write.table(body_acc_z_all, ".\\tidydata\\all\\Inertial Signals\\body_acc_z_all.txt")

## ## Merge body_gyro_x: train before test
body_gyro_x_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_x_train.txt")
body_gyro_x_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_x_test.txt")
body_gyro_x_all <- rbind(body_gyro_x_train,body_gyro_x_test)
write.table(body_gyro_x_all, ".\\tidydata\\all\\Inertial Signals\\body_gyro_x_all.txt")

## ## Merge body_gyro_y: train before test
body_gyro_y_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_y_train.txt")
body_gyro_y_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_y_test.txt")
body_gyro_y_all <- rbind(body_gyro_y_train,body_gyro_y_test)
write.table(body_gyro_y_all, ".\\tidydata\\all\\Inertial Signals\\body_gyro_y_all.txt")

## ## Merge body_gyro_z: train before test
body_gyro_z_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\body_gyro_z_train.txt")
body_gyro_z_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\body_gyro_z_test.txt")
body_gyro_z_all <- rbind(body_gyro_z_train,body_gyro_z_test)
write.table(body_gyro_z_all, ".\\tidydata\\all\\Inertial Signals\\body_gyro_z_all.txt")

## Merge total_acc_x: train before test
total_acc_x_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_x_train.txt")
total_acc_x_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_x_test.txt")
total_acc_x_all <- rbind(total_acc_x_train,total_acc_x_test)
write.table(total_acc_x_all, ".\\tidydata\\all\\Inertial Signals\\total_acc_x_all.txt")

## Merge total_acc_y: train before test
total_acc_y_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_y_train.txt")
total_acc_y_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_y_test.txt")
total_acc_y_all <- rbind(total_acc_y_train,total_acc_y_test)
write.table(total_acc_y_all, ".\\tidydata\\all\\Inertial Signals\\total_acc_y_all.txt")

## Merge total_acc_z: train before test
total_acc_z_train <- read.table(".\\UCI HAR Dataset\\train\\Inertial Signals\\total_acc_z_train.txt")
total_acc_z_test <- read.table(".\\UCI HAR Dataset\\test\\Inertial Signals\\total_acc_z_test.txt")
total_acc_z_all <- rbind(total_acc_z_train,total_acc_z_test)
write.table(total_acc_z_all, ".\\tidydata\\all\\Inertial Signals\\total_acc_z_all.txt")
