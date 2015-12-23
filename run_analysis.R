## Read in metadata
feature.labels <- read.table("features.txt")
activity.labels <- read.table("activity_labels.txt")

## Read in data
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
train.subjects <- read.table("train/subject_train.txt", col.names = "subject")
test.activities <- read.table("test/y_test.txt", col.names = "activity")
train.activities <- read.table("train/y_train.txt", col.names="activity")
test.features <- read.table("test/X_test.txt")
train.features <- read.table("train/X_train.txt")

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

## Replace numeric activities with activity labels
data$Activity <- as.character(data$Activity)
for (i in 1:6) {
    data$Activity[data$Activity == i] <- as.character(activity.labels[i,2])
}

## Clean up feature column names
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

## Convert Subject and Activity to factors
data$Subject <- as.factor(data$Subject)
data$Activity <- as.factor(data$Activity)

## Output tidy data
tidyData <- aggregate(. ~ Subject + Activity, data, mean)
tidyData <- tidyData[order(tidyData$Subject, tidyData$Activity),]
write.table(tidyData, file = "tidy.txt", row.names = F)
