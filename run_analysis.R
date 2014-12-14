require(reshape2)

# Read Test data
TestData<-read.table("UCI HAR Dataset/test/X_test.txt")
subjTest<-read.table("UCI HAR Dataset/test/y_test.txt")[,1]
SubjLabTest<-read.table("UCI HAR Dataset/test/subject_test.txt")[,1]

# read features list (variable names) and fix typos
features<-read.table("UCI HAR Dataset/features.txt")
features[,2]<-gsub("-","_",features[,2])
features[,2]<-gsub('\\(\\)',"func",features[,2]) # () replaced with "func" to enable subsetting later 
features[,2]<-gsub('\\(','_',features[,2])
features[,2]<-gsub('\\)','_',features[,2])
features[,2]<-gsub("BodyBody","Body",features[,2])

# Read activity labels names
ActLab<-read.table("UCI HAR Dataset/activity_labels.txt")

# rename variables in dataset into features
names(TestData)<-features[,2]

# Combine test activity labels and subject labels into data
TestData<-cbind(TestData,ActLabels=subjTest)
TestData<-cbind(TestData,SubjLabels=SubjLabTest)

# Replace activity labels vector with a factor where levels are labled accordintly
TestData$ActLabels<-factor(x = TestData$ActLabels,labels = ActLab$V2)

# Read train data
TrainData<-read.table("UCI HAR Dataset/train/X_train.txt")
subjTrain<-read.table("UCI HAR Dataset/train/y_train.txt")[,1]
SubjLabTrain<-read.table("UCI HAR Dataset/train/subject_train.txt")[,1]

# rename variables in dataset into features
names(TrainData)<-features[,2]

# Combine train acctivity labels and subject labels into data
TrainData<-cbind(TrainData,ActLabels=subjTrain)
TrainData<-cbind(TrainData,SubjLabels=SubjLabTrain)

# Replace ativity labels vector with a factor where levels are labled accordingly
TrainData$ActLabels<-factor(x = TrainData$ActLabels,labels = ActLab$V2)

# Combine the two datasets to one big dataset
data<-rbind(TestData,TrainData)

# Extract only variables that are the mean and std of the measured signals
# (Does not extract the averaged signals in a signal window sample)
meltData<-melt(data,id.vars=c("ActLabels","SubjLabels"),measure.vars=c(grep("meanfunc",features[,2],fixed=T),grep("stdfunc",features[,2],fixed=T)))
avgData<-dcast(meltData,SubjLabels+ActLabels~variable,mean)
write.table(avgData,"TidyDataResults.txt",row.names = FALSE)
