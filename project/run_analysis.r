run_analysis <- function {

#Set working directory
#Download the zip file. Unzip.
#Read training and test data sets into dataframes

xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/Y_train.txt")
subjecttrain <- read.table("./train/subject_train.txt")

xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/Y_test.txt")
subjecttest <- read.table("./test/subject_test.txt")

features <- read.table("./features.txt")
activities <- read.table("./activity_labels.txt")

############################################################################################
#1.  Merge the training and test data sets to creat one data set
############################################################################################

# rbind xtrain and xtest into one data set
maindf <- rbind(xtrain,xtest)
# use features dataframe to rename columns of the MAIN dataframe
colnames(maindf) <- features[,2]

# rbind ytrain and ytest to compose the ACTIVITIES column
activity_df <- rbind(ytrain,ytest)
# convert class of newly added activity column to factor
activity_df <- as.factor(activity_df)
# assign character factor names to integer factor values
levels(activiy_df$V1) <- activities[,2]
# cbind column of activities to the MAIN dataframe
maindf <- cbind(activity_df,maindf)
# rename the activity column
colnames(maindf)[1] <- "activity"

# rbind subjecttrain and subjecttest dataframes to compose subject_df dataframe which we will eventaully
# append to the MAIN dataframe
subject_df <- rbind(subjecttrain, subjecttest)
subject_df$V1 <- as.factor(subject_df$V1)
maindf <- cbind(subject_df,maindf)
colnames(maindf)[1] <- "subject"







}