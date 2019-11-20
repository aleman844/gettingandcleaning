library(data.table)
###Step 1-Merge######
    #get features
    features <- read.csv('features.txt', sep='', skip = 0, header = FALSE)
    #Cleaning Names 
    cleanames <- sub("^f","freq_",features[,2])
    cleanames <- sub("^t","time_",cleanames)
    cleanames <- sub("^angle","angl_",cleanames)
    cleanames <- sub("Gravity","grav_",cleanames)
    cleanames <- sub("BodyBody","Body",cleanames)
    cleanames <- sub("Body","body_",cleanames)
    cleanames <- sub("Gyro","gyr_",cleanames)
    cleanames <- sub("Acc","acc_",cleanames)
    cleanames <- sub("Jerk","jrk_",cleanames)
    cleanames <- sub("Mag","mag_",cleanames)
    cleanames <- sub("\\(","",cleanames)
    cleanames <- sub("\\)","",cleanames)
    cleanames <- sub("-mean-","mean_",cleanames)
    cleanames <- sub("-mean","mean",cleanames)
    cleanames <- sub("-std-","stdr_",cleanames)
    cleanames <- sub("-std","stdr",cleanames)
    cleanames <- sub("-","",cleanames)
    cleanames <- sub(",","_",cleanames)
    cleanames <- tolower(cleanames)
    write.csv(cleanames[grep("mean|std",cleanames)], 'names.csv')
    
    
    #get train data
    xtrain <- read.csv('train/X_train.txt', sep='', skip = 0, header = FALSE, col.names =cleanames)
    #get labels train
    ylabel_train <- read.csv('train/y_train.txt', skip = 0, header = FALSE, col.names = c('activityid'))
    xtrain <- cbind(xtrain, ylabel_train)
    
    #get test data
    xtest <- read.csv('test/X_test.txt' , sep='', skip = 0, header = FALSE, col.names =cleanames)
    #get labels test
    ylabel_test <- read.csv('test/y_test.txt',skip = 0, header = FALSE, col.names = c('activityid'))
    xtest <- cbind(xtest, ylabel_test)
    
    #merge both dataframes
    data <- rbind(xtest,xtrain)
    


###Step 2-Extract######
    #get names with mean or sd
    names_mean_sd <- grep("mean|stdr|activityid",names(data), value = TRUE)
    df_t <- data[,names_mean_sd]

###Step 3-Descriptive activity names######
    #Get activities label
    act_labels <- read.csv('activity_labels.txt',sep='', skip = 0, header = FALSE)
    
    #Add activities label to data
    df_t <- cbind(df_t,'activities'=sapply(df_t$activityid,  function(x) tolower(act_labels[x,2])))

###Step 4-Appropiate labels names######
    #The correct names was correted in step 1

###Step 5-average of each variable for each activity######
    #Create data table
    dt <- data.table(copy(df_t))
    dt[,c("activities"):=NULL]
    dt_f <- dt[, lapply(.SD, mean, na.rm=TRUE), by=activityid ]
    #Writing the tidy data
    write.table(df_t,file="dt.txt" ,row.names = FALSE)
    
    
