## Getting and Cleaning Data Course Project
Introduction

Author: Amanda

Date: 18 July 2022

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The original dataset provides observations from 30 volunteers within an age bracket of 19-48 years, who wore a Samsung Galaxy S II on the waist and had their activities, such as walking, monitored. The smartphone embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The dataset was put together through its training and test data sets. 

For each record it is provided:
======================================

- Mean and STD Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Mean and STD Triaxial Angular velocity from the gyroscope. 
- Variables with time and frequency domain variables, by subject and by activity label.
- An identifier of the subject who carried out the experiment.

The Analysis:
=========================================

It was made using tidyverse package,  built under R version 4.1.3.

Steps for analysis:
1) Download the original data
2) Unzip the files contained
3) Merges the training and the test sets to create one data set
3.1) Name columns for both datasets using the features data
3.2) Read data sets X_Train and X_Test txt files
3.3) Add subjects for both datasets using the Subject_Test and Subject_Train files
3.4) Add labels for both datasets using the Label_Test and Label_Train files
3.5) Bind train and test dataframes
4) Extracts only the measurements on the mean and standard deviation for each measurement.
# Mean = mean
# Standard Deviation = std
# V1 = Activities_ID and Subject_ID
5) Uses descriptive activity names to name the activities in the data set
# Walking, Walking_Upstairs, etc. 
6) Appropriately labels the data set with descriptive variable names.
# tBodyAccmeanX (see codebook for more examples)
7) From the data set, creates a second with the average of each variable for each activity and each subject.


The dataset includes the following files:
=========================================

- 'README.md'

- 'Coodebook.md': Shows information about the variables

- 'run_analysis.R ': Code and Comments

- 'Assignment.ipynb' : Jupyter Notebook file, with the code read.

- 'Dataset.zip' : Zip withe the files needed for analysis

- 'UCI HAR Dataset' : Files needed for analysis


Notes: 
======
- File names are correspondent to the original source
- Features are normalized and bounded within [-1,1].
- Each activity is grouped by subject ID
- Original data avaible at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
