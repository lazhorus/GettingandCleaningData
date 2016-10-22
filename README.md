# Getting and Cleaning Data Project  

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 

1. a tidy data set as described below, 
2. a link to a Github repository with your script for performing the analysis, and 
3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 

You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

You should create one R script called run_analysis.R that does the following.

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	
The run_analysis.R file run the function run_analysis that:

1.  Reads the X_train, Y_train, subject_train, X_test, Y_test, subject_test, features, and activity_labels text files into the appropriate data frames.  
2.  Merges the X_train and X_test, Y_train and Y_test, and subject_train and subject_test datasets into a single data set named "maindf"  
3.  Uses the feature names detailed as row values in the features data set as the column names for "maindf" with the Y_train and Y_test column names "activity" and the subject_train and subject_test column named "subject"  
4.  Extracts the columns of "maindf" the have mean() and std() in the name.  
5.  From the resulting "maindf", the function also creates a second dataframe with the average of each variable for each activity and each subject.  
6.  This second dataframe is then written to a text file.   
