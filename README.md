## Getting and Cleaning Data Course Project
## Introduction


## author: Amanda
## date: 18 July 2022
## 
## The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

##
## Prerequisite: download the data collected from the accelerometers from the Samsung Galaxy S smartphone
##                https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  


The original dataset provides observations from 30 volunteers within an age bracket of 19-48 years, who wore a Samsung Galaxy S II on the waist and had their activities, such as walking, monitored. The smartphone embedded accelerometer and gyroscope captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The dataset was put together through its training and test data sets. 

For each record it is provided:
======================================

- Mean and STD Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Mean and STD Triaxial Angular velocity from the gyroscope. 
- Variables with time and frequency domain variables, by subject and by activity label.
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.md'

- 'Coodebook.md': Shows information about the variables

- 'Assignment.R': Code and Comments

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each activity is grouped by subject ID