#library(dplyr)
library(reshape2)

#read all data
subject_test<-read.table('subject_test.txt')
subject_train<-read.table('subject_train.txt')
X_test<-read.table('X_test.txt')
y_test<-read.table('Y_test.txt')
X_train<-read.table('X_train.txt')
y_train<-read.table('y_train.txt')

activity_labels<-read.table('activity_labels.txt')
names(activity_labels)<-c('id','activity')

features<-read.table('features.txt')
names(features)<-c('id','feature')

# names of columns in X_test and X_train files are rows (second column) in features file
names(X_test)<-features[,2]
names(X_train)<-features[,2]

# merging subject and train data together
subject<-rbind(subject_test,subject_train)
X<-rbind(X_test,X_train)
y<-rbind(y_test,y_train)


# dplyr.select fails for me on this data.frames
# so I need to construct final dataframe manually

final<-data.frame(subject=subject[,1])

y_factor<-factor(y[,1], levels=activity_labels[,1], labels=activity_labels[,2])
final<-cbind(final, activity=y_factor)

final_names<-c('subject','activity')
for (i in seq_along(features[,2])) {
    # we add column to final dataframe, if it describes value of mean or standart deviation
    # in this case column name contains "-mean()" or "-std()"
    if (grepl('-mean[(][)]',features[i,2]) | grepl('-std[(][)]',features[i,2])) {
        final<-cbind(final, X[,i])
        final_names<-c(final_names, as.character(features[i,"feature"]) )
    }
}
names(final)<-final_names

#having () or - in variable names is illegal in R and causes problems
names(final)<-gsub('[(][)]','',names(final))
names(final)<-gsub('-','_',names(final))
names(final)<-gsub('tBody','timeBody',names(final))
names(final)<-gsub('tGravity','timeGravity',names(final))
names(final)<-gsub('fBody','freqBody',names(final))
names(final)<-gsub('fGravity','freqGravity',names(final))


# Transform Wide to Long data
molten_final <- melt(final, id=c("subject","activity"))

# And back from Long to Wide using "mean" as aggregate function
final_means <- dcast(molten_final, subject + activity ~ variable, mean)

# This is our result!
write.table(final_means, file='result.txt', row.names = FALSE)

