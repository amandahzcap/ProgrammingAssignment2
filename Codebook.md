## CODE BOOK

The variables selected for this assignment come from the dataset "accelerometers of Samsung Galaxy S smartphones", which has data from the accelerometer and gyroscope. 

The signals were used to estimate variables of the feature vector for each pattern:  
**'-XYZ'** is used to denote 3-axial signals in the X, Y and Z directions.
**prefix 't'** denote time;
**prefix 'f'** denote Fast Fourier Transform (FFT);
**Acceleration** Acc; separated into: 
- body (tBodyAcc)
- gravity (tGravityAcc)

**Body linear acceleration** and **angular velocity** were derived in time to obtain Jerk signals, respectively
-tBodyAccJerk and tBodyGyroJerk 

**Mean** denotes variable mean for determined observation.
**STD** denotes Standard Deviation for determined observation.
**meanFreq** Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

**Activity Name** refers to activities the participant performed, such as WALKING, wearing a smartphone (Samsung Galaxy S II) on the waist.
**Subject_ID** is the subject identifier.


### Variables ##

'Activity_Name'
'Subject_ID'
'tBodyAccmeanX'
'tBodyAccmeanY'
'tBodyAccmeanZ'
'tGravityAccmeanX'
'tGravityAccmeanY'
'tGravityAccmeanZ'
'tBodyAccJerkmeanX'
'tBodyAccJerkmeanY'
'tBodyAccJerkmeanZ'
'tBodyGyromeanX'
'tBodyGyromeanY'
'tBodyGyromeanZ'
'tBodyGyroJerkmeanX'
'tBodyGyroJerkmeanY'
'tBodyGyroJerkmeanZ'
'tBodyAccMagmean'
'tGravityAccMagmean'
'tBodyAccJerkMagmean'
'tBodyGyroMagmean'
'tBodyGyroJerkMagmean'
'fBodyAccmeanX'
'fBodyAccmeanY'
'fBodyAccmeanZ'
'fBodyAccmeanFreqX'
'fBodyAccmeanFreqY'
'fBodyAccmeanFreqZ'
'fBodyAccJerkmeanX'
'fBodyAccJerkmeanY'
'fBodyAccJerkmeanZ'
'fBodyAccJerkmeanFreqX'
'fBodyAccJerkmeanFreqY'
'fBodyAccJerkmeanFreqZ'
'fBodyGyromeanX'
'fBodyGyromeanY'
'fBodyGyromeanZ'
'fBodyGyromeanFreqX'
'fBodyGyromeanFreqY'
'fBodyGyromeanFreqZ'
'fBodyAccMagmean'
'fBodyAccMagmeanFreq'
'fBodyBodyAccJerkMagmean'
'fBodyBodyAccJerkMagmeanFreq'
'fBodyBodyGyroMagmean'
'fBodyBodyGyroMagmeanFreq'
'fBodyBodyGyroJerkMagmean'
'fBodyBodyGyroJerkMagmeanFreq'
'angletBodyAccMeangravity'
'angletBodyAccJerkMeangravityMean'
'angletBodyGyroMeangravityMean'
'angletBodyGyroJerkMeangravityMean'
'angleXgravityMean'
'angleYgravityMean'
'angleZgravityMean'
'tBodyAccstdX'
'tBodyAccstdY'
'tBodyAccstdZ'
'tGravityAccstdX'
'tGravityAccstdY'
'tGravityAccstdZ'
'tBodyAccJerkstdX'
'tBodyAccJerkstdY'
'tBodyAccJerkstdZ'
'tBodyGyrostdX'
'tBodyGyrostdY'
'tBodyGyrostdZ'
'tBodyGyroJerkstdX'
'tBodyGyroJerkstdY'
'tBodyGyroJerkstdZ'
'tBodyAccMagstd'
'tGravityAccMagstd'
'tBodyAccJerkMagstd'
'tBodyGyroMagstd'
'tBodyGyroJerkMagstd'
'fBodyAccstdX'
'fBodyAccstdY'
'fBodyAccstdZ'
'fBodyAccJerkstdX'
'fBodyAccJerkstdY'
'fBodyAccJerkstdZ'
'fBodyGyrostdX'
'fBodyGyrostdY'
'fBodyGyrostdZ'
'fBodyAccMagstd'
'fBodyBodyAccJerkMagstd'
'fBodyBodyGyroMagstd'
'fBodyBodyGyroJerkMagstd'