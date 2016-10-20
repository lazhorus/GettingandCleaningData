run_analysis <- function {

#Read training and test data sets into dataframes

dfXtest <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","test/X_test.txt"))
dfYtest <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","test/Y_test.txt"))
dfsubjecttest <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","test/sibject_test.txt"))

dfXtrain <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","train/X_train.txt"))
dfYtrain <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","train/Y_train.txt"))
dfsubjecttrain <- read.table(paste0(getwd(),"/","UCI HAR Dataset","/","train/subject_train.txt"))

#1.  Merge the training and test data sets to creat one data set
############################################################################################

dfX <- rbind(dfXtrain, dfXtest)
dfY <- rbind(dfYtrain, dfYtest)
dfsubject <- rbind(dfsubjecttrain,dfsubjecttest)



}