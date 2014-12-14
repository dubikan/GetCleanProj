# Getting and Cleaning Data Project

The `x_train` and `x_test` files were combined after applying the variable names according to the features.txt file, adding subject labels and activity labels to each observation and replacing the activity labels with their descriptive names as taken from the activity_labels.txt.

The complete dataset was then "melted" to include only variables that are the application of mean() or std() functions to the signals collected (see codebook.md for additional information). Other means, such as mean frequency, or the means of signals in a signal window sample, were not included.

Using the melted database, the average of each of the above variables for each subject-activity dyad was calculated.

The resulting data frame was saved into TidyDataResults.txt. The file can be read using

```
data<-read.table("TidyDataResults.txt", header=TRUE)
view(data)
```

The script to produce this data is saved as run_analysis.R. The script assumes the contents of the data is saved in the subdirectory "UCI HAR Dataset" in the working directory.


