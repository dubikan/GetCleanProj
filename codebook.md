# Codebook

## ID Labels

* SubjLabels -- Subject number (ranges between 1-30)
* ActLabel -- Type of activity (six values: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing or Laying)

## Singal variables

The following description is based on the information from the features_info.txt file of the original data:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyBodyAccJerkMag, fBodyBodyGyroMag, fBodyBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate normalized variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

66 Variables are calculated in total. The variables are in the following format:

* SignalType_functype[_XYZ]

SignalType -- the signal name from the above list  
functype -- either meanfunc (mean) or stdfunc (standard deviation)  
[_XYZ] -- one of the 3-axial signals in the X, Y and Z directions (well applicable)  

e.g. tBodyAcc_meanfunc_X: the mean of tBodyAcc (time domain signal for body acceleration) on the X axis.

The data in the TidyDataResults.txt file are the average for each subject-activity of the mean or standard deviation of each of the above variables.
