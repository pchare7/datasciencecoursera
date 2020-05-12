---
title: "CodeBook"
author: "Paul Hare"
date: "5/12/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

This codebook summarizes the tidy dataset produced from the UCI HAR Dataset as part of the project assignment for the Getting and Cleaning Data course.
 
The tidy dataset d_tidy.txt contains the means for 561 measures taken from a device worn by 30 subjects during 6 different activities:

* WALKING
* WALKING UPSTAIRS
* WALKING DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Each measure is the mean Time or Frequency as measured by the Gyroscope(gyro) or Accelerometer(acc) and along an x,y or z axis as appropriate. The variables are listed below:

* Time_BodyAcc_Mean_X
* Time_BodyAcc_Mean_Y
* Time_BodyAcc_Mean_Z
* Time_BodyAcc_StdDev_X
* Time_BodyAcc_StdDev_Y
* Time_BodyAcc_StdDev_Z
* Time_GravityAcc_Mean_X
* Time_GravityAcc_Mean_Y
* Time_GravityAcc_Mean_Z
* Time_GravityAcc_StdDev_X
* Time_GravityAcc_StdDev_Y
* Time_GravityAcc_StdDev_Z
* Time_BodyAccJerk_Mean_X
* Time_BodyAccJerk_Mean_Y
* Time_BodyAccJerk_Mean_Z
* Time_BodyAccJerk_StdDev_X
* Time_BodyAccJerk_StdDev_Y
* Time_BodyAccJerk_StdDev_Z
* Time_BodyGyro_Mean_X
* Time_BodyGyro_Mean_Y
* Time_BodyGyro_Mean_Z
* Time_BodyGyro_StdDev_X
* Time_BodyGyro_StdDev_Y
* Time_BodyGyro_StdDev_Z
* Time_BodyGyroJerk_Mean_X
* Time_BodyGyroJerk_Mean_Y
* Time_BodyGyroJerk_Mean_Z
* Time_BodyGyroJerk_StdDev_X
* Time_BodyGyroJerk_StdDev_Y
* Time_BodyGyroJerk_StdDev_Z
* Time_BodyAccMag_Mean
* Time_BodyAccMag_StdDev
* Time_GravityAccMag_Mean
* Time_GravityAccMag_StdDev
* Time_BodyAccJerkMag_Mean
* Time_BodyAccJerkMag_StdDev
* Time_BodyGyroMag_Mean
* Time_BodyGyroMag_StdDev
* Time_BodyGyroJerkMag_Mean
* Time_BodyGyroJerkMag_StdDev
* Frequency_BodyAcc_Mean_X
* Frequency_BodyAcc_Mean_Y
* Frequency_BodyAcc_Mean_Z
* Frequency_BodyAcc_StdDev_X
* Frequency_BodyAcc_StdDev_Y
* Frequency_BodyAcc_StdDev_Z
* Frequency_BodyAcc_MeanFreq_X
* Frequency_BodyAcc_MeanFreq_Y
* Frequency_BodyAcc_MeanFreq_Z
* Frequency_BodyAccJerk_Mean_X
* Frequency_BodyAccJerk_Mean_Y
* Frequency_BodyAccJerk_Mean_Z
* Frequency_BodyAccJerk_StdDev_X
* Frequency_BodyAccJerk_StdDev_Y
* Frequency_BodyAccJerk_StdDev_Z
* Frequency_BodyAccJerk_MeanFreq_X
* Frequency_BodyAccJerk_MeanFreq_Y
* Frequency_BodyAccJerk_MeanFreq_Z
* Frequency_BodyGyro_Mean_X
* Frequency_BodyGyro_Mean_Y
* Frequency_BodyGyro_Mean_Z
* Frequency_BodyGyro_StdDev_X
* Frequency_BodyGyro_StdDev_Y
* Frequency_BodyGyro_StdDev_Z
* Frequency_BodyGyro_MeanFreq_X
* Frequency_BodyGyro_MeanFreq_Y
* Frequency_BodyGyro_MeanFreq_Z
* Frequency_BodyAccMag_Mean
* Frequency_BodyAccMag_StdDev
* Frequency_BodyAccMag_MeanFreq
* Frequency_BodyBodyAccJerkMag_Mean
* Frequency_BodyBodyAccJerkMag_StdDev
* Frequency_BodyBodyAccJerkMag_MeanFreq
* Frequency_BodyBodyGyroMag_Mean
* Frequency_BodyBodyGyroMag_StdDev
* Frequency_BodyBodyGyroMag_MeanFreq
* Frequency_BodyBodyGyroJerkMag_Mean
* Frequency_BodyBodyGyroJerkMag_StdDev
* Frequency_BodyBodyGyroJerkMag_MeanFreq

