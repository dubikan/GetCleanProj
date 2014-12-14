# Getting and Cleaning Data Project

The `x_train` and `x_test` files were combined after applying the variable names according to the features.txt file, adding subject labels and activity labels to each observation and replacing the activity labels with their descriptive names as taken from the activity_labels.txt.

The complete dataset was then "melted" to include only variables that are the application of mean() or std() functions to the signals collected (see codebook.md for additional information). Other means, such as mean frequency, or the means of signals in a signal window sample, were not included.

Using the melted database, the average of each of the above variables for each subject-activity dyad was calculated.
