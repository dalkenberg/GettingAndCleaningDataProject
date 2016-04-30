# GettingAndCleaningDataProject
Coursera Getting and Cleaning Data Course Project 

This is the code and data set required by the Coursera course "Getting and Cleaning Data" project.

## Data source

The data source for this project was:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description of this data source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Code

Code can be found in run_analysis.R

The code performs the following:

Read in data for the train and test data sets from 
Sources: train\X_train.txt, test\X_test.txt

Read in activity, subject, and name data to be used in the analysis 
Sources: train\subject_train.txt, test\subject_test.txt, train\y_train.text, test\y_test.txt, features.txt

combine the test and train data sets into a single data set
using the names dataset, determine which columns are associated with mean() and std()
create tidy dataset of mean() and std() values with appropriate long names

create secondary tidy data set with averages for each column, grouped by subject and activity with appropriate names

