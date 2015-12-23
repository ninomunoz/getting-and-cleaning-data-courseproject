## Code Book

### Data Summary:

Data was collected from the accelerometers of Samsung Galaxy S smartphones. The purpose of collecting this data is to develop more advanced algorithms to attract new users of wearable technology.


### Description of Data:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

**For each record it is provided:**
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

**The dataset includes the following files:**
- *features_info.txt*: Shows information about the variables used on the feature vector.
- *features.txt*: List of all features.
- *activity_labels.txt*: Links the class labels with their activity name.
- *train/X_train.txt*: Training set.
- *train/y_train.txt*: Training labels.
- *test/X_test.txt*: Test set.
- *test/y_test.txt*: Test labels.

**The following files are available for the train and test data. Their descriptions are equivalent.** 

- *train/subject_train.txt*: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- *train/Inertial Signals/total_acc_x_train.txt*: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- *train/Inertial Signals/body_acc_x_train.txt*: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- *train/Inertial Signals/body_gyro_x_train.txt*: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


### Description of Variables

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. and the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) – both using a low pass Butterworth filter.

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. *(Note the ‘f’ to indicate frequency domain signals)*.

**Key:**
- leading *t* or *f*: time or frequency measurement
- SD: standard deviation
- Acc: accelerometer measurement
- Gyro: gyroscopic measurement
- Mag: magnitude of movement

Using the above key with the raw data, a tidy data set with more descriptive variable names was generated.

**Variables:**
[1] "Subject"
[2] "Activity"                                         
[3] "TimeBodyAccelerometerMean()-X"                    
[4] "TimeBodyAccelerometerMean()-Y"                    
[5] "TimeBodyAccelerometerMean()-Z"                    
[6] "TimeBodyAccelerometerSTD()-X"                     
[7] "TimeBodyAccelerometerSTD()-Y"                     
[8] "TimeBodyAccelerometerSTD()-Z"                     
[9] "TimeGravityAccelerometerMean()-X"                 
[10] "TimeGravityAccelerometerMean()-Y"                 
[11] "TimeGravityAccelerometerMean()-Z"                 
[12] "TimeGravityAccelerometerSTD()-X"                  
[13] "TimeGravityAccelerometerSTD()-Y"                  
[14] "TimeGravityAccelerometerSTD()-Z"                  
[15] "TimeBodyAccelerometerJerkMean()-X"                
[16] "TimeBodyAccelerometerJerkMean()-Y"                
[17] "TimeBodyAccelerometerJerkMean()-Z"                
[18] "TimeBodyAccelerometerJerkSTD()-X"                 
[19] "TimeBodyAccelerometerJerkSTD()-Y"                 
[20] "TimeBodyAccelerometerJerkSTD()-Z"                 
[21] "TimeBodyGyroscopeMean()-X"                        
[22] "TimeBodyGyroscopeMean()-Y"                        
[23] "TimeBodyGyroscopeMean()-Z"                        
[24] "TimeBodyGyroscopeSTD()-X"                         
[25] "TimeBodyGyroscopeSTD()-Y"                         
[26] "TimeBodyGyroscopeSTD()-Z"                         
[27] "TimeBodyGyroscopeJerkMean()-X"                    
[28] "TimeBodyGyroscopeJerkMean()-Y"                    
[29] "TimeBodyGyroscopeJerkMean()-Z"                    
[30] "TimeBodyGyroscopeJerkSTD()-X"                     
[31] "TimeBodyGyroscopeJerkSTD()-Y"                     
[32] "TimeBodyGyroscopeJerkSTD()-Z"                     
[33] "TimeBodyAccelerometerMagnitudeMean()"             
[34] "TimeBodyAccelerometerMagnitudeSTD()"              
[35] "TimeGravityAccelerometerMagnitudeMean()"          
[36] "TimeGravityAccelerometerMagnitudeSTD()"           
[37] "TimeBodyAccelerometerJerkMagnitudeMean()"         
[38] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
[39] "TimeBodyGyroscopeMagnitudeMean()"                 
[40] "TimeBodyGyroscopeMagnitudeSTD()"                  
[41] "TimeBodyGyroscopeJerkMagnitudeMean()"             
[42] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
[43] "FrequencyBodyAccelerometerMean()-X"               
[44] "FrequencyBodyAccelerometerMean()-Y"               
[45] "FrequencyBodyAccelerometerMean()-Z"               
[46] "FrequencyBodyAccelerometerSTD()-X"                
[47] "FrequencyBodyAccelerometerSTD()-Y"                
[48] "FrequencyBodyAccelerometerSTD()-Z"                
[49] "FrequencyBodyAccelerometerMeanFreq()-X"           
[50] "FrequencyBodyAccelerometerMeanFreq()-Y"           
[51] "FrequencyBodyAccelerometerMeanFreq()-Z"           
[52] "FrequencyBodyAccelerometerJerkMean()-X"           
[53] "FrequencyBodyAccelerometerJerkMean()-Y"           
[54] "FrequencyBodyAccelerometerJerkMean()-Z"           
[55] "FrequencyBodyAccelerometerJerkSTD()-X"            
[56] "FrequencyBodyAccelerometerJerkSTD()-Y"            
[57] "FrequencyBodyAccelerometerJerkSTD()-Z"            
[58] "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
[59] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"       
[60] "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
[61] "FrequencyBodyGyroscopeMean()-X"                   
[62] "FrequencyBodyGyroscopeMean()-Y"                   
[63] "FrequencyBodyGyroscopeMean()-Z"                   
[64] "FrequencyBodyGyroscopeSTD()-X"                    
[65] "FrequencyBodyGyroscopeSTD()-Y"                    
[66] "FrequencyBodyGyroscopeSTD()-Z"                    
[67] "FrequencyBodyGyroscopeMeanFreq()-X"               
[68] "FrequencyBodyGyroscopeMeanFreq()-Y"               
[69] "FrequencyBodyGyroscopeMeanFreq()-Z"               
[70] "FrequencyBodyAccelerometerMagnitudeMean()"        
[71] "FrequencyBodyAccelerometerMagnitudeSTD()"         
[72] "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMagnitudeMean()"    
[74] "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
[75] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
[76] "FrequencyBodyGyroscopeMagnitudeMean()"            
[77] "FrequencyBodyGyroscopeMagnitudeSTD()"             
[78] "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
[79] "FrequencyBodyGyroscopeJerkMagnitudeMean()"        
[80] "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
[81] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
[82] "Angle(TimeBodyAccelerometerMean,Gravity)"         
[83] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)"
[84] "Angle(TimeBodyGyroscopeMean,GravityMean)"         
[85] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"     
[86] "Angle(X,GravityMean)"                             
[87] "Angle(Y,GravityMean)"                             
[88] "Angle(Z,GravityMean)"


### Data Transformation:

**Download the data.**

```
filesPath <- ".../Documents/Data Science/GettingAndCleaningData/Couse Project/getting-and-cleaning-data-courseproject/UCI HAR Dataset"
setwd(filesPath)
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "./data/Dataset.zip", method = "curl")
unzip(zipfile = "./data/Dataset.zip", exdir = "./data")
```

**Load library packages.**

```
library(dplyr)
library(data.table)
library(tidyr)
```

**Read in metadata.**

```
feature.labels <- read.table("features.txt")
activity.labels <- read.table("activity_labels.txt")
```

**Read in data.**

```
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
train.subjects <- read.table("train/subject_train.txt", col.names = "subject")
test.activities <- read.table("test/y_test.txt", col.names = "activity")
train.activities <- read.table("train/y_train.txt", col.names="activity")
test.features <- read.table("test/X_test.txt")
train.features <- read.table("train/X_train.txt")
```

**Filter features with mean/std and merge relevant data into single data frame.**

```
## Generate subject, activity and feature rows
subjects <- rbind(test.subjects, train.subjects)
activities <- rbind(test.activities, train.activities)
features <- rbind(test.features, train.features)

## Column names
colnames(subjects) <- "Subject"
colnames(activities) <- "Activity"
colnames(features) <- t(feature.labels[2])

## Extract columns from features with mean or standard deviation
features.mean.std <- features[, grep(".*mean.*|.*std.*", names(features), ignore.case = T)]

## Bind columns to create data frame
data <- cbind(subjects, activities, features.mean.std)
```


**Replace numeric activities in the data set with activity labels.**

```
data$Activity <- as.character(data$Activity)
for (i in 1:6) {
    data$Activity[data$Activity == i] <- as.character(activity.labels[i,2])
}
```

**Give each of the columns more descriptive variable names (i.e., replacing abbrevations).**

```
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("tBody", "TimeBody", names(data))
names(data) <- gsub("-mean()", "Mean", names(data), ignore.case = T)
names(data) <- gsub("-std()", "STD", names(data), ignore.case = T)
names(data) <- gsub("-freq()", "Frequency", names(data), ignore.case = T)
names(data) <- gsub("angle", "Angle", names(data))
names(data) <- gsub("gravity", "Gravity", names(data))
```

**Create a second, independent tidy data set with the average of each variable for each activity and each subject.**

```
## Convert Subject and Activity to factors
data$Subject <- as.factor(data$Subject)
data$Activity <- as.factor(data$Activity)

## Output tidy data
tidyData <- aggregate(. ~ Subject + Activity, data, mean)
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]
write.table(tidyData, file = "tidy.txt", row.names = F)
```