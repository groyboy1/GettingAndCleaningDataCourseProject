<h3>Getting and Cleaning Data Course Project</h3>

This repository contains files for the Getting and Cleaning Data Course Project.

It is meant for cleaning and reshaping the dataset downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It contains the following files:

a) dataset_average_activity_subject.txt - the tidy data set.
b) CodeBook.md - describing each variable and its values in the tidy data set.
c) run_analysis.R - the script for converting the raw data to the tidy dataset. 


Steps for going from raw to tidy data set:
<ul>
<li>Unzip the raw data from the url above in your working directory</li>
<li>Run run_analysis.R</li>
<li>The tidy dataset dataset_average_activity_subject.txt will be created in your working directory</li>
</ul>


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

More details about the raw data and how it was collected can be found in the raw data zip package.


The following actions are performed by the run_analysis.R script to go from the raw data to the tidy data:

1) The training and the test sets were merged to create one data set.
2) Only the measurements on the mean and standard deviation were extracted for each measurement. 
3) Descriptive activity names were used to name the activities in the data set
4) The data set was appropriately labeled with descriptive variable names.
5) The dataset was summarized using the average of each variable for each activity and each subject.


References:
================
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.