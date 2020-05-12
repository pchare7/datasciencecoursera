---
title: "ReadMe"
author: "Paul Hare"
date: "5/12/2020"
output: html_document
---


## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

The script run_analyis.R is built to read in the following files from the .zip archive downloaded from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip:

* \\test\\X_test.txt
* \\test\\Y_Test.txt
* \\test\\subject_test.txt
* \\train\\X_train.txt
* \\train\\Y_train.txt
* \\train\\subject_train.txt
* features.txt
* activity_labels.txt

Subsequent code performs the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.






