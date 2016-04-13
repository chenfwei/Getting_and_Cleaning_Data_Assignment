## Getting and Cleaning Data - Course Project (Coursera)
## Package dependencies

## Package 'dplyr' is used to work with the data. It must be installed from CRAN:

## install.packages("dplyr")
## It's loaded by the script with the 'library(dplyr)' command.

## run_analysis.R

## This script produces a tidy data set using the 'Human Activity Recognition Using Smartphones Dataset'.

## Train and Test data are merged to create one complete data set;
## All the features are named after the list present in the 'features.txt' file;
## The activities performed by the subjects are labelled with the data present in the 'activity_labels.txt' file;
## This tidy data set presents only the average of each variable for each activity and each subject.

## merged_data: All Train and Test data merged with variables and activities properly labeled (only measurements on the mean and standard deviation for each measurement);
## summary_data: Data set used to write the 'tidy_data_set.txt' final file.
## Important: Working Directory must be set to this script's location.
