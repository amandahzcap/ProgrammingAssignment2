## Check whether you need to install the `tidyverse` library
require("tidyverse")
library(tidyverse)


## Download Data Set
url <-
        "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "Dataset.zip")

## Untar the file
untar("Dataset.zip")

## 1) Merges the training and the test sets to create one data set.
# Create columns names for both datasets from txt:
# Convert text rows to colnames
features <-
        read.delim(file = "UCI HAR Dataset/features.txt", header = F)  
names_features <-
        column_to_rownames(features, var = "V1")                 


# Read data sets
train <-
        read.table(file = "UCI HAR Dataset/train/X_train.txt", 
                   col.names = row.names(names_features))
test <-
        read.table(file = "UCI HAR Dataset/test/X_test.txt", 
                   col.names = row.names(names_features))

## Add subjects from txt for both datasets:
# Test Data
subject_test <-
        read.delim(file = "UCI HAR Dataset/test/subject_test.txt",
                   header = FALSE)

test_df <- bind_cols(subject_test, test)

# Train Data
subject_train <-
        read.table(file = "UCI HAR Dataset/train/subject_train.txt",
                   header = FALSE)
train_df <- bind_cols(subject_train, train)

## Add labels for both datasets:
# Test Data
label_test <-
        read.delim(file = "UCI HAR Dataset/test/y_test.txt", header = FALSE)
test_df <- bind_cols(label_test, test_df,)

# Train Data
label_train <-
        read.delim(file = "UCI HAR Dataset/train/y_train.txt", header = FALSE)
train_df <- bind_cols(label_train, train_df)

## Bind train and test dataframes

df <- bind_rows(train_df, test_df)

head(df)

## 2) Extracts only the measurements on the mean and standard deviation.
# Mean = mean
# Standard Deviation = std
# V1 = Activities_ID and Subject_ID

new_df <- df %>% select(contains(c("V1", "mean", "std")))

## 3) Uses descriptive activity names to name the activities in the data set

new_df <-
        rename(new_df, Activity_Name = V1...1, Subject_ID = V1...2)

# Labling the Activities

new_df$Activity_Name <- as.character(new_df$Activity_Name)
new_df$Activity_Name <-  str_replace_all(
        new_df$Activity_Name,
        c(
                "1" = "WALKING",
                "2" = "WALKING_UPSTAIRS",
                "3" = "WALKING_DOWNSTAIRS",
                "4" = "SITTING",
                "5" = "STANDING",
                "6" = "LAYING"
        )
)

## 4) Appropriately labels the data set with descriptive variable names.

colnames(new_df) <-
        str_replace_all(names(new_df), c("^X|[:digit:]|\\."), "")
head(new_df)

## 5) From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
average_df_final <-
        new_df %>% 
                group_by(Subject_ID, Activity_Name) %>% 
                          transmute(across(everything(), mean))
average_df_final <-
        distinct(average_df_final) %>% 
               arrange(Subject_ID, .by_group =  TRUE)

average_df_final