# ReadMe

## What's this?
###Human Activity Recognition Using Smartphones Data Set 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

See <a href="https://github.com/hokumski/GettingAndCleaningData_CourseProject/blob/master/CodeBook.md">CodeBook</a> 
for more information.

## Data manipulation in run_analysis.R

Our goal:

Code in run_analysis.R downloads, merges, transforms information to produce data.frame, containing average values of "SOMETHING-mean()" an "SOMETHING-std()" variables for each activity of each subject.


You have downloaded dataset from <a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#">this (original)</a>
or <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip">this (mirror)</a> server, then unzipped all the data to your R 
directory; so files 'subject_test.txt', 'subject_train.txt', 'X_test.txt', 'Y_test.txt', 'X_train.txt', 
'y_train.txt', 'activity_labels.txt', 'features.txt' are in your working directory.

Type getwd() to ensure you are in your directory and list.files() to check it contains these files.

We read all text files using read.table() command.

There are 6 paired files: "subject" for test and train, "X" and "y". We load each file separately and then merge rows together for each test-train pair using rbind().

- "X" - data of observations, but without reference to subject.
- "y" - reference of observation to activity type
- "subject" - reference of observation to subject. N'th row of "subject" refers N'th row of observation.
- File "features.txt" contains column (variables) names for "X". 
- File "activity_labels" contains names of activities

Now we start creating new data.frame. In parallel we create vector final_names with column names for new data.frame.

- First column - subject
- Second column - activity name. We use factor() to replace activity identifier to it's name

Other columns of new data.frame are columns of "X"-file containing mean and standard deviation. We iterate in loop feature names.
In case if feature name contains "-mean()" or "-std()", adding column to new data.frame using cbind(), adding feature name to final_names. 
If not, skipping it.

We replace some tokens in column names of data.frame:
- removing "()" 
- replacing "-" to "_"
- replacing "tBody" to "timeBody", "tGravity" to "timeGravity", "fBody" to "freqBody" and "fGravity" to "freqGravity"
 
Now data.frame contains all necessary and filtered columns with correct names.

There are two final transformations:
- from "wide" to "long" data using melt() function
- from "long" to "wide" again using dcast() function with "mean" as aggregate function.

Result of dcast() function contains our final result.
