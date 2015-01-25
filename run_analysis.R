## READING DATA
activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
features<-read.table("./UCI HAR Dataset/features.txt")

# Training Data
train.x<-read.table("./UCI HAR Dataset/train/X_train.txt")
train.y<-read.table("./UCI HAR Dataset/train/y_train.txt")
train.subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# Test Data
test.x<-read.table("./UCI HAR Dataset/test/X_test.txt")
test.y<-read.table("./UCI HAR Dataset/test/y_test.txt")
test.subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")

## CLEANING DATA
# Merge the training and the test sets to create one data set

## Features
dataset.x <- rbind(train.x, test.x)
names(dataset.x) <- features$V2
# Filter columns 
column.positions <-  grepl("mean\\(\\)|std\\(\\)", names(dataset.x))
dataset.x.filtered <- dataset.x[column.positions]

## Activities 
dataset.y <- rbind(train.y, test.y)
names(dataset.y) <- c("activity")
# Replace activity id with label 
dataset.y$activity <- factor(dataset.y$activity, activity.labels$V1, labels = activity.labels$V2)

## Subjects
dataset.subject <- rbind(train.subject, test.subject)
names(dataset.subject) <- c("subject")

# Combine subject, activity and feature data
dataset.all <- cbind(dataset.subject, dataset.y, dataset.x.filtered)

## RESHAPING DATA 
# Create an independent tidy data set with the average of each variable for each activity and each subject
dataset.all.melted = melt(dataset.all, id = c("activity", "subject"))
dataset.average.activity.subject = dcast(dataset.all.melted, activity + subject ~ variable, mean)

write.table(dataset.average.activity.subject, file="dataset_average_activity_subject.txt", row.names=FALSE)  



