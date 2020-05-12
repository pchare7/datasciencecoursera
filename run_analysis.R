##Getting and Cleaning Data Course
##Programming project assignment
##UCI HAR Dataset
##Create Date: 5/12/2020

#read 561 features and store values as a character vector
features <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep = " ")
features <- as.character(features[,2])

#read the training data, combine and rename the columns of the data frame
train.x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train.activity <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = FALSE, sep = " ")
train.subject <- read.csv("./UCI HAR Dataset/train/subject_train.txt",header = FALSE, sep = " ")
d_train <-  data.frame(train.subject, train.activity, train.x)
names(d_train) <- c(c("subject", "activity"), features)

#read the test data, combine and rename the columns of the data frame
test.x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test.activity <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = FALSE, sep = " ")
test.subject <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = FALSE, sep = " ")
d_test <-  data.frame(test.subject, test.activity, test.x)
names(d_test) <- c(c("subject", "activity"), features)

#merge the training and test data
d_merged <- rbind(d_train, d_test)

#Extract only the std and mean columns
columns <- grep("mean|std", features) 
columns <- columns + 2
d_subset <- d_merged[,c(1,2,columns)]

#read activity labels into a table so number and names are separate columns
labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
labels <- labels[,2]
#replace the activity numbers in the subset with labels
d_subset$activity <- labels[d_subset$activity]

#Set appropriate decriptive variable names
s_names <- names(d_subset)
#Remove all parens and replace - with _
s_names <- gsub("[(][)]", "", s_names)
s_names <- gsub("-", "_", s_names)
s_names <- gsub("^t", "Time_", s_names)
s_names <- gsub("^f", "Frequency_", s_names)
s_names <- gsub("mean", "Mean", s_names)
s_names <- gsub("std", "StdDev", s_names)
names(d_subset) <- s_names

#creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject
d_tidy <- group_by(d_subset,activity,subject)
d_tidy %>% summarize_all(mean)
write.table(x = d_tidy, file = "d_tidy.txt", row.names = FALSE)
