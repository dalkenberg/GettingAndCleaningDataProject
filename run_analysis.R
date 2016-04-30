# Read in the test data
uci_test <- read.table("test\\X_test.txt", header=FALSE, strip.white = TRUE)

# Read in the subject and activity info for the test data
subject_test <- read.table("test\\subject_test.txt", header=FALSE, strip.white = TRUE)
activity_test <- read.table("test\\y_test.txt", header=FALSE, strip.white = TRUE)

# change the column names for subject and activity for train data
names(subject_test)[1] <- "subject"
names(activity_test)[1] <- "activity"

# Read in the train data
uci_train <- read.table("train\\X_train.txt", header=FALSE, strip.white = TRUE)

# Read in the subject and activity info for the train data
subject_train <- read.table("train\\subject_train.txt", header=FALSE, strip.white = TRUE)
activity_train <- read.table("train\\y_train.txt", header=FALSE, strip.white = TRUE)

# change the column names for subject and activity for train data
names(subject_train)[1] <- "subject"
names(activity_train)[1] <- "activity"

# add the subject and activity columns to the main data frame
uci_test <- cbind(uci_test,subject_test,activity_test)
uci_train <- cbind(uci_train,subject_train,activity_train)

# add the train and test data frames together into one data frame
uci_combined <- rbind(uci_train, uci_test)

# Read in the column names into a new data frame
uci_names <- read.table("features.txt", header=FALSE, strip.white = TRUE)

# extract out the names that contain mean() or std()
mean_names <- uci_names[grep("mean\\(\\)", uci_names$V2), ]
std_names <- uci_names[grep("std\\(\\)", uci_names$V2), ]

# combine the name data frames
mean_std_names <- rbind(mean_names, std_names)

# Create a vector of the columns for means and std devs
mean_std_cols <- unlist(mean_std_names[1])

# Create a new data frame of just the mean/stdev columns from the main dataset
mean_std_data <- uci_combined[,mean_std_cols]

# Create a new column in the names dataset and build good long names
mean_std_names$LongName <- mean_std_names$V2
mean_std_names$LongName <- gsub("Acc","Acceleration",mean_std_names$LongName)
mean_std_names$LongName <- gsub("-mean\\(\\)","Mean",mean_std_names$LongName)
mean_std_names$LongName <- gsub("-std\\(\\)","StdDev",mean_std_names$LongName)

# Rename the columns in the new dataset
names(mean_std_data) <- mean_std_names$LongName

# Create a new set of data for "average of each variable for each activity and each subject."
mean_std_data_copy <- mean_std_data

colnames(mean_std_data_copy) <- paste(colnames(mean_std_data_copy), "Average", sep = "-")

# Add the activity and subject columns
mean_std_data_copy$activity <- uci_combined$activity
mean_std_data_copy$subject <- uci_combined$subject

# create the new data set with the average of each variable grouped by activity and user
mean_std_data_avg <- aggregate(mean_std_data_copy[, 1:66], list(mean_std_data_copy$activity, mean_std_data_copy$subject), mean)

# Change the names of the activity and Subject columns to be more meaningful
names(mean_std_data_avg)[names(mean_std_data_avg)=="Group.1"] <- "Activity"
names(mean_std_data_avg)[names(mean_std_data_avg)=="Group.2"] <- "Subject"





