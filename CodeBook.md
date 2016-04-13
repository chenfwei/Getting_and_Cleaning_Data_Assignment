# Code Book

The following is a sample of the data set structure:

| Subject  | Activity            | Variable X    | Variable Y... |
|:---------|:--------------------|:--------------|:--------------|
| 1        | LAYING              | mean(X)       | mean(Y)       |
| 1        | SITTING             | mean(X)       | mean(Y)       |
| 1        | STANDING            | mean(X)       | mean(Y)       |
| 1        | WALKING             | mean(X)       | mean(Y)       |
| 1        | WALKING_DOWNSTAIRS  | mean(X)       | mean(Y)       |
| 1        | WALKING_UPSTAIRS    | mean(X)       | mean(Y)       |
| 2        | LAYING              | mean(X)       | mean(Y)       |
| ...      | ...                 | ...           | ...           |

## Transformations made to clean up the data

Variable names were made syntactically valid with the 'make.names()' function, from the 'base' R package.
From all the variables present in the original data set, only those related to the mean and standard deviation were selected in the final set.

## Summary choices made

This tidy data set presents the average of each variable for each activity and each subject.
Each measurement were first grouped by the subject who performed the action, then by the activity performed.
The 'mean()' function was used in this calculation.

## Variables present in the data set

* Subject
    * Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
* Activity
    * Any of the six activities performed:
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
* tBodyAcc.mean.X
    * body acceleration signal in the X direction (mean value)
* tBodyAcc.mean.Y
    * body acceleration signal in the Y direction (mean value)
* tBodyAcc.mean.Z
    * body acceleration signal in the Z direction (mean value)
* tGravityAcc.mean.X
    * gravity acceleration signal in the X direction (mean value)
* tGravityAcc.mean.Y
    * gravity acceleration signal in the Y direction (mean value)
* tGravityAcc.mean.Z
    * gravity acceleration signal in the Z direction (mean value)
* tBodyAccJerk.mean.X
    * Jerk signal of body linear acceleration in the X direction (mean value)
* tBodyAccJerk.mean.Y
    * Jerk signal of body linear acceleration in the Y direction (mean value)
* tBodyAccJerk.mean.Z
    * Jerk signal of body linear acceleration in the Z direction (mean value)
* tBodyGyro.mean.X
    * body gyroscope signal in the X direction (mean value)
* tBodyGyro.mean.Y
    * body gyroscope signal in the Y direction (mean value)
* tBodyGyro.mean.Z
    * body gyroscope signal in the Z direction (mean value)
* tBodyGyroJerk.mean.X
    * Jerk signal of body gyroscope in the X direction (mean value)
* tBodyGyroJerk.mean.Y
    * Jerk signal of body gyroscope in the Y direction (mean value)
* tBodyGyroJerk.mean.Z
    * Jerk signal of body gyroscope in the Z direction (mean value)
* tBodyAccMag.mean
    * magnitude of body acceleration signal (mean value)
* tGravityAccMag.mean
    * magnitude of gravity acceleration signal (mean value)
* tBodyAccJerkMag.mean
    * magnitude of body acceleration signal (Jerk signal, mean value)
* tBodyGyroMag.mean
    * magnitude of body gyroscope signal (mean value)
* tBodyGyroJerkMag.mean
    * magnitude of body gyroscope signal (Jerk signal, mean value)
* fBodyAcc.mean.X
    * frequency of body acceleration signal in the X direction (mean value)
* fBodyAcc.mean.Y
    * frequency of body acceleration signal in the Y direction (mean value)
* fBodyAcc.mean.Z
    * frequency of body acceleration signal in the Z direction (mean value)
* fBodyAcc.meanFreq.X
    * weighted average of body acceleration signal in the X direction (mean frequency)
* fBodyAcc.meanFreq.Y
    * weighted average of body acceleration signal in the Y direction (mean frequency)
* fBodyAcc.meanFreq.Z
    * weighted average of body acceleration signal in the Z direction (mean frequency)
* fBodyAccJerk.mean.X
    * frequency of body linear acceleration in the X direction (Jerk signal, mean value)
* fBodyAccJerk.mean.Y
    * frequency of body linear acceleration in the Y direction (Jerk signal, mean value)
* fBodyAccJerk.mean.Z
    * frequency of body linear acceleration in the Z direction (Jerk signal, mean value)
* fBodyAccJerk.meanFreq.X
    * weighted average of body acceleration signal in the X direction (Jerk signal, mean frequency)
* fBodyAccJerk.meanFreq.Y
    * weighted average of body acceleration signal in the Y direction (Jerk signal, mean frequency)
* fBodyAccJerk.meanFreq.Z
    * weighted average of body acceleration signal in the Z direction (Jerk signal, mean frequency)
* fBodyGyro.mean.X
    * frequency of body gyroscope signal in the X direction (mean value)
* fBodyGyro.mean.Y
    * frequency of body gyroscope signal in the Y direction (mean value)
* fBodyGyro.mean.Z
    * frequency of body gyroscope signal in the Z direction (mean value)
* fBodyGyro.meanFreq.X
    * weighted average of body gyroscope signal in the X direction (mean frequency)
* fBodyGyro.meanFreq.Y
    * weighted average of body gyroscope signal in the Y direction (mean frequency)
* fBodyGyro.meanFreq.Z
    * weighted average of body gyroscope signal in the Z direction (mean frequency)
* fBodyAccMag.mean
    * frequency of body acceleration magnitude signal (mean frequency)
* fBodyAccMag.meanFreq
    * weighted average of body acceleration magnitude signal (mean frequency)
* fBodyBodyAccJerkMag.mean
    * frequency of body acceleration magnitude signal (Jerk signal, mean frequency)
* fBodyBodyAccJerkMag.meanFreq
    * weighted average of body acceleration signal (Jerk signal, mean frequency)
* fBodyBodyGyroMag.mean
    * frequency of body gyroscope magnitude signal (mean frequency)
* fBodyBodyGyroMag.meanFreq
    * weighted average of body gyroscope magnitude (mean frequency)
* fBodyBodyGyroJerkMag.mean
    * frequency of body gyroscope magnitude (Jerk signal, mean frequency)
* fBodyBodyGyroJerkMag.meanFreq
    * weighted average of body gyroscope magnitude (Jerk signal, mean frequency)
* tBodyAcc.std.X
    * standard deviation of body acceleration signal in the X direction
* tBodyAcc.std.Y
    * standard deviation of body acceleration signal in the Y direction
* tBodyAcc.std.Z
    * standard deviation of body acceleration signal in the Z direction
* tGravityAcc.std.X
    * standard deviation of gravity acceleration signal in the X direction
* tGravityAcc.std.Y
    * standard deviation of gravity acceleration signal in the Y direction
* tGravityAcc.std.Z
    * standard deviation of gravity acceleration signal in the Z direction
* tBodyAccJerk.std.X
    * standard deviation of body acceleration signal in the X direction (Jerk signal)
* tBodyAccJerk.std.Y
    * standard deviation of body acceleration signal in the Y direction (Jerk signal)
* tBodyAccJerk.std.Z
    * standard deviation of body acceleration signal in the Z direction (Jerk signal)
* tBodyGyro.std.X
    * standard deviation of body gyroscope signal in the X direction
* tBodyGyro.std.Y
    * standard deviation of body gyroscope signal in the Y direction
* tBodyGyro.std.Z
    * standard deviation of body gyroscope signal in the Z direction
* tBodyGyroJerk.std.X
    * standard deviation of body gyroscope signal in the X direction (Jerk signal)
* tBodyGyroJerk.std.Y
    * standard deviation of body gyroscope signal in the Y direction (Jerk signal)
* tBodyGyroJerk.std.Z
    * standard deviation of body gyroscope signal in the Z direction (Jerk signal)
* tBodyAccMag.std
    * standard deviation of body acceleration magnitude signal
* tGravityAccMag.std
    * standard deviation of gravity acceleration magnitude signal
* tBodyAccJerkMag.std
    * standard deviation of body acceleration magnitude signal (Jerk signal)
* tBodyGyroMag.std
    * standard deviation of body gyroscope magnitude signal
* tBodyGyroJerkMag.std
    * standard deviation of body gyroscope magnitude signal (Jerk signal)
* fBodyAcc.std.X
    * standard deviation of body acceleration frequency in the X direction
* fBodyAcc.std.Y
    * standard deviation of body acceleration frequency in the Y direction
* fBodyAcc.std.Z
    * standard deviation of body acceleration frequency in the Z direction
* fBodyAccJerk.std.X
    * standard deviation of body acceleration frequency in the X direction (Jerk signal)
* fBodyAccJerk.std.Y
    * standard deviation of body acceleration frequency in the Y direction (Jerk signal)
* fBodyAccJerk.std.Z
    * standard deviation of body acceleration frequency in the Z direction (Jerk signal)
* fBodyGyro.std.X
    * standard deviation of body gyroscope frequency in the X direction
* fBodyGyro.std.Y
    * standard deviation of body gyroscope frequency in the Y direction
* fBodyGyro.std.Z
    * standard deviation of body gyroscope frequency in the Z direction
* fBodyAccMag.std
    * standard deviation of body acceleration frequency magnitude
* fBodyBodyAccJerkMag.std
    * standard deviation of body acceleration frequency magnitude (Jerk signal)
* fBodyBodyGyroMag.std
    * standard deviation of body gyroscope frequency magnitude
* fBodyBodyGyroJerkMag.std
    * standard deviation of body gyroscope frequency magnitude (Jerk signal)
