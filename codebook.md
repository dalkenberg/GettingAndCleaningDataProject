Codebook: Assignment - Getting and Cleaning Data Course Project
===============================================================

Data source
-----------

The data source for this project was:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of this data source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Extract from the above link:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Data sets
---------
* mean_std_data - data frame containing 66 columns of data pertaining to mean() and stddev() columns from the combined original train and test data sets.
* mean_std_data_avg - data frame containing the average of each of the 66 columns from mean_std_data, grouped by activity and subject

Data manipulation
-----------------
The two tidy data sets are extracted from the original data sourve via the run_analysis.R script
* For mean_std_data The script combines the original data sets, extracts the mean() and stddev() columns and renames the columns to more meaningful column names
* For mean_std_data_avg, the script adds the subject and activity columns to mean_std_data and takes the average of each column grouped by subject and activity.

Data columns
---------
Data columns found in mean_std_data:
tBodyAccelerationMean-X, tBodyAccelerationMean-Y, tBodyAccelerationMean-Z
tGravityAccelerationMean-X,tGravityAccelerationMean-Y,tGravityAccelerationMean-Z
tBodyAccelerationJerkMean-X,tBodyAccelerationJerkMean-Y,tBodyAccelerationJerkMean-Z
tBodyGyroMean-X,tBodyGyroMean-Y,tBodyGyroMean-Z
tBodyGyroJerkMean-X,tBodyGyroJerkMean-Y,tBodyGyroJerkMean-Z
tBodyAccelerationMagMean
tGravityAccelerationMagMean
tBodyAccelerationJerkMagMean
tBodyGyroMagMean
tBodyGyroJerkMagMean
fBodyAccelerationMean-X,fBodyAccelerationMean-Y,fBodyAccelerationMean-Z
fBodyAccelerationJerkMean-X,fBodyAccelerationJerkMean-Y,fBodyAccelerationJerkMean-Z
fBodyGyroMean-X,fBodyGyroMean-Y,fBodyGyroMean-Z
fBodyAccelerationMagMean
fBodyBodyAccelerationJerkMagMean
fBodyBodyGyroMagMean
fBodyBodyGyroJerkMagMean
tBodyAccelerationStdDev-X,tBodyAccelerationStdDev-Y,tBodyAccelerationStdDev-Z
tGravityAccelerationStdDev-X,tGravityAccelerationStdDev-Y,tGravityAccelerationStdDev-Z
tBodyAccelerationJerkStdDev-X,tBodyAccelerationJerkStdDev-Y,tBodyAccelerationJerkStdDev-Z
tBodyGyroStdDev-X,tBodyGyroStdDev-Y,tBodyGyroStdDev-Z
tBodyGyroJerkStdDev-X,tBodyGyroJerkStdDev-Y,tBodyGyroJerkStdDev-Z
tBodyAccelerationMagStdDev
tGravityAccelerationMagStdDev
tBodyAccelerationJerkMagStdDev
tBodyGyroMagStdDev
tBodyGyroJerkMagStdDev
fBodyAccelerationStdDev-X,fBodyAccelerationStdDev-Y,fBodyAccelerationStdDev-Z
fBodyAccelerationJerkStdDev-X,fBodyAccelerationJerkStdDev-Y,fBodyAccelerationJerkStdDev-Z
fBodyGyroStdDev-X,fBodyGyroStdDev-Y,fBodyGyroStdDev-Z
fBodyAccelerationMagStdDev
fBodyBodyAccelerationJerkMagStdDev
fBodyBodyGyroMagStdDev
fBodyBodyGyroJerkMagStdDev 

Data columns found in mean_std_data:
Activity
Subject
tBodyAccelerationMean-X-Average,tBodyAccelerationMean-Y-Average,tBodyAccelerationMean-Z-Average
tGravityAccelerationMean-X-Average,tGravityAccelerationMean-Y-Average,tGravityAccelerationMean-Z-Average
tBodyAccelerationJerkMean-X-Average,tBodyAccelerationJerkMean-Y-Average,tBodyAccelerationJerkMean-Z-Average
tBodyGyroMean-X-Average,tBodyGyroMean-Y-Average,tBodyGyroMean-Z-Average
tBodyGyroJerkMean-X-Average,tBodyGyroJerkMean-Y-Average,tBodyGyroJerkMean-Z-Average
tBodyAccelerationMagMean-Average
tGravityAccelerationMagMean-Average
tBodyAccelerationJerkMagMean-Average
tBodyGyroMagMean-Average
tBodyGyroJerkMagMean-Average
fBodyAccelerationMean-X-Average,fBodyAccelerationMean-Y-Average,fBodyAccelerationMean-Z-Average
fBodyAccelerationJerkMean-X-Average,fBodyAccelerationJerkMean-Y-Average,fBodyAccelerationJerkMean-Z-Average
fBodyGyroMean-X-Average,fBodyGyroMean-Y-Average,fBodyGyroMean-Z-Average
fBodyAccelerationMagMean-Average
fBodyBodyAccelerationJerkMagMean-Average
fBodyBodyGyroMagMean-Average
fBodyBodyGyroJerkMagMean-Average
tBodyAccelerationStdDev-X-Average,tBodyAccelerationStdDev-Y-Average,tBodyAccelerationStdDev-Z-Average
tGravityAccelerationStdDev-X-Average,tGravityAccelerationStdDev-Y-Average,tGravityAccelerationStdDev-Z-Average
tBodyAccelerationJerkStdDev-X-Average,tBodyAccelerationJerkStdDev-Y-Average,tBodyAccelerationJerkStdDev-Z-Average
tBodyGyroStdDev-X-Average,tBodyGyroStdDev-Y-Average,tBodyGyroStdDev-Z-Average
tBodyGyroJerkStdDev-X-Average,tBodyGyroJerkStdDev-Y-Average,tBodyGyroJerkStdDev-Z-Average
tBodyAccelerationMagStdDev-Average
tGravityAccelerationMagStdDev-Average
tBodyAccelerationJerkMagStdDev-Average
tBodyGyroMagStdDev-Average
tBodyGyroJerkMagStdDev-Average
fBodyAccelerationStdDev-X-Average,fBodyAccelerationStdDev-Y-Average,fBodyAccelerationStdDev-Z-Average
fBodyAccelerationJerkStdDev-X-Average,fBodyAccelerationJerkStdDev-Y-Average,fBodyAccelerationJerkStdDev-Z-Average
fBodyGyroStdDev-X-Average,fBodyGyroStdDev-Y-Average,fBodyGyroStdDev-Z-Average
fBodyAccelerationMagStdDev-Average
fBodyBodyAccelerationJerkMagStdDev-Average
fBodyBodyGyroMagStdDev-Average
fBodyBodyGyroJerkMagStdDev-Average 