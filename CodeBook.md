#CodeBook


##Human Activity Recognition Using Smartphones Data Set 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.


The features selected for this database come from the accelerometer and gyroscope 3-axial 
raw signals timeAcc-XYZ and timeGyro-XYZ. 
These time domain signals (with prefix 'time') were captured at a constant rate of 50 Hz. Then they were 
filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency 
of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity 
acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter 
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were 
calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, 
timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
freqBodyAcc-XYZ, freqBodyAccJerk-XYZ, freqBodyGyro-XYZ, freqBodyAccJerkMag, freqBodyGyroMag, freqBodyGyroJerkMag. 
(note 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern.

'_X','_Y','_Z' is used to denote 3-axial signals in the X, Y and Z directions.

'_mean' - mean value of signal

'_std' - standard deviation of signal value

### Script run_analysis.R
Detailed information about original data files and how script works - please read in <a href="https://github.com/hokumski/GettingAndCleaningData_CourseProject/blob/master/README.md">README.md</a> file.

### Result Variables

- subject - identifier of volunteer. An integer from 1 to 30
- activity - name of activity

Means and Standard deviations:
- timeBodyAcc_mean_X
- timeBodyAcc_mean_Y
- timeBodyAcc_mean_Z
- timeBodyAcc_std_X
- timeBodyAcc_std_Y
- timeBodyAcc_std_Z
- timeGravityAcc_mean_X
- timeGravityAcc_mean_Y
- timeGravityAcc_mean_Z
- timeGravityAcc_std_X
- timeGravityAcc_std_Y
- timeGravityAcc_std_Z
- timeBodyAccJerk_mean_X
- timeBodyAccJerk_mean_Y
- timeBodyAccJerk_mean_Z
- timeBodyAccJerk_std_X
- timeBodyAccJerk_std_Y
- timeBodyAccJerk_std_Z
- timeBodyGyro_mean_X
- timeBodyGyro_mean_Y
- timeBodyGyro_mean_Z
- timeBodyGyro_std_X
- timeBodyGyro_std_Y
- timeBodyGyro_std_Z
- timeBodyGyroJerk_mean_X
- timeBodyGyroJerk_mean_Y
- timeBodyGyroJerk_mean_Z
- timeBodyGyroJerk_std_X
- timeBodyGyroJerk_std_Y
- timeBodyGyroJerk_std_Z
- timeBodyAccMag_mean
- timeBodyAccMag_std
- timeGravityAccMag_mean
- timeGravityAccMag_std
- timeBodyAccJerkMag_mean
- timeBodyAccJerkMag_std
- timeBodyGyroMag_mean
- timeBodyGyroMag_std
- timeBodyGyroJerkMag_mean
- timeBodyGyroJerkMag_std
- freqBodyAcc_mean_X
- freqBodyAcc_mean_Y
- freqBodyAcc_mean_Z
- freqBodyAcc_std_X
- freqBodyAcc_std_Y
- freqBodyAcc_std_Z
- freqBodyAccJerk_mean_X
- freqBodyAccJerk_mean_Y
- freqBodyAccJerk_mean_Z
- freqBodyAccJerk_std_X
- freqBodyAccJerk_std_Y
- freqBodyAccJerk_std_Z
- freqBodyGyro_mean_X
- freqBodyGyro_mean_Y
- freqBodyGyro_mean_Z
- freqBodyGyro_std_X
- freqBodyGyro_std_Y
- freqBodyGyro_std_Z
- freqBodyAccMag_mean
- freqBodyAccMag_std
- freqBodyBodyAccJerkMag_mean
- freqBodyBodyAccJerkMag_std
- freqBodyBodyGyroMag_mean
- freqBodyBodyGyroMag_std
- freqBodyBodyGyroJerkMag_mean
- freqBodyBodyGyroJerkMag_std
