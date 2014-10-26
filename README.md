getdata-008-Course-Project
==========================

This is my homework for the Course Project assignment of the Coursera Get and Cleaning Data Course.

# Submitted code: how it works

The R code is distributed over three scripts. 

* run_analysis.R
* merge_datasets.R
* mean_sdt.R

The main script is run_analysis.R and can be run with source() function
assuming that:

1. All three scripts are in the working directory.
2. The original data set is a directory called UCI HAR Dataset
3. The UCI HAR Dataset directory is in the working directory (same level of the scripts)

# Submitted code: expected output

The code generated two datasets. The tidydata and the tidydataset.

## tidydata
The code generates a directory at the same level of UCI HAR Dataset called "tidydata" with a subdirectory "all". The "all" subdirectory is the merge of the "test" and "train" of the
original data set.

## tidydataset
The code generates a directory at the same level of UCI HAR Dataset called "tidydataset" with the required data set with the average of each variable for each activity and each subject.
Called X_mean_avg.txt and X_std_avg.txt.


