# Loads add-on packages
library(dplyr)

# Reads all data into R
# Important: the Working Directory must be set to this script's location
test_data <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/test/X_test.txt', stringsAsFactors = FALSE)
train_data <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/train/X_train.txt', stringsAsFactors = FALSE)
features <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/features.txt')
test_labels <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/test/y_test.txt')
train_labels <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/train/y_train.txt')
test_subject <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/test/subject_test.txt')
train_subject <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/train/subject_train.txt')
activity_labels <- read.table('C:/Users/Admin/Desktop/3. Cleaning Data/UCI HAR Dataset/activity_labels.txt')

# Merges the training and the test sets to create one data set
merged_data <- bind_rows(test_data, train_data)

# Labels the data set with descriptive variable names (from features.txt)
colnames(merged_data) <- make.names(features$V2, unique = TRUE)

# Extracts only the measurements on the mean and standard deviation for each measurement 
merged_data <- select(merged_data, 
                      contains('mean'), ignore.case = FALSE, 
                      contains('std'), ignore.case = FALSE
                      )

# Uses descriptive activity names to name the activities in the data set
# Joins activity labels with test and train labels
test_labels_labeled <- left_join(test_labels, activity_labels, by = 'V1')
test_labels_labeled <- select(test_labels_labeled, V2)
train_labels_labeled <- left_join(train_labels, activity_labels, by = 'V1')
train_labels_labeled <- select(train_labels_labeled, V2)
data_labels <- bind_rows(test_labels_labeled, train_labels_labeled)
# Name the variable as 'Activity' and merge to the final data set
colnames(data_labels) <- c('Activity')
merged_data <- bind_cols(merged_data, data_labels)

# Bind the subjects to the final data set
data_subjects <- bind_rows(test_subject, train_subject)
colnames(data_subjects) <- c('Subject')
merged_data <- bind_cols(merged_data, data_subjects)

# Create a summary data set grouped by Subject and Activity
grouped_data <- group_by(merged_data, Subject, Activity)
summary_data <- summarise_each(grouped_data, funs(mean))
# Write to the file system
write.table(summary_data, 'tidy_data_set.txt', row.names = FALSE)