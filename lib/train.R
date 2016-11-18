#install library 
#source("http://bioconductor.org/biocLite.R")
#biocLite("rhdf5")
library(rhdf5)


### loading data in
setwd("/Users/Ruby/Desktop/project4/Project4_data")
file <- list.files(pattern = ".h5", recursive = TRUE)
file  <- as.matrix(file)
sound <- apply(file,1,h5read,"analysis")

id <- read.table("common_id.txt") 
names(sound) <- id[,1]

names(sound) <- paste("testsong", 1:100, sep = "_")

##feature extract function 
feature_extract <- function(a){
  whole_data <- c()
  
  #data <- list_ele$bars_confidence
  #mean_data <- mean(data)
  #median_data <- median(data)
  #quant_1 <- quantile(data, 0.25)
  #quant_3 <- quantile(data, 0.75)
  #min_data <- min(data,na.rm = T)
  #max_data <- max(data,na.rm = T)
  #sd_data <- sd(data)
  #new_data <- c(median_data, min_data, quant_1, mean_data,
   #             quant_3, max_data, sd_data)
  #whole_data <- c(whole_data, new_data)
  
  data = a$bars_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data = c(whole_data, new_data)
  
  # data <- list_ele$beats_confidence
  # mean_data <- mean(data)
  # median_data <- median(data)
  # quant_1 <- quantile(data, 0.25)
  # quant_3 <- quantile(data, 0.75)
  # min_data <- min(data,na.rm = T)
  # max_data <- max(data,na.rm = T)
  # sd_data <- sd(data)
  # new_data <- c(median_data, min_data, quant_1, mean_data,
  #               quant_3, max_data, sd_data)
  # whole_data <- c(whole_data, new_data)
  
  data <- a$beats_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  # data <- list_ele$sections_confidence
  # mean_data <- mean(data)
  # median_data <- median(data)
  # quant_1 <- quantile(data, 0.25)
  # quant_3 <- quantile(data, 0.75)
  # min_data <- min(data,na.rm = T)
  # max_data <- max(data,na.rm = T)
  # sd_data <- sd(data)
  # new_data <- c(median_data, min_data, quant_1, mean_data,
  #               quant_3, max_data, sd_data)
  # whole_data <- c(whole_data, new_data)
  
  data <- a$sections_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  # data <- list_ele$segments_confidence
  # mean_data <- mean(data)
  # median_data <- median(data)
  # quant_1 <- quantile(data, 0.25)
  # quant_3 <- quantile(data, 0.75)
  # min_data <- min(data,na.rm = T)
  # max_data <- max(data,na.rm = T)
  # sd_data <- sd(data)
  # new_data <- c(median_data, min_data, quant_1, mean_data,
  #               quant_3, max_data, sd_data)
  # whole_data <- c(whole_data, new_data)
  
  data <- a$segments_loudness_max
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  data <- a$segments_loudness_max_time
  mean_data <- mean(data)
  median_data <- median(data)
  quant_1 <- quantile(data, 0.25)
  quant_3 <- quantile(data, 0.75)
  min_data <- min(data,na.rm = T)
  max_data <- max(data,na.rm = T)
  sd_data <- sd(data)
  new_data <- c(median_data, min_data, quant_1, mean_data,
                quant_3, max_data, sd_data)
  whole_data <- c(whole_data, new_data)
  
  data <- a$segments_loudness_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  data <- a$segments_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  #data <- list_ele$songs
  #whole_data <- c(whole_data, as.vector(data))
  
  # data <- list_ele$tatums_confidence
  # mean_data <- mean(data)
  # median_data <- median(data)
  # quant_1 <- quantile(data, 0.25)
  # quant_3 <- quantile(data, 0.75)
  # min_data <- min(data,na.rm = T)
  # max_data <- max(data,na.rm = T)
  # sd_data <- sd(data)
  # new_data <- c(median_data, min_data, quant_1, mean_data,
  #               quant_3, max_data, sd_data)
  # whole_data <- c(whole_data, new_data)
  # 
  data <- a$tatums_start
  if(length(data) == 0){
    
    mean_data <- NA
    median_data <- NA
    quant_1 <- NA
    quant_3 <- NA
    min_data <- NA
    max_data <- NA
    sd_data <- NA
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  else{
    mean_data <- mean(data,na.rm = T)
    median_data <- median(data,na.rm = T)
    quant_1 <- quantile(data, 0.25)
    quant_3 <- quantile(data, 0.75)
    min_data <- min(data,na.rm = T)
    max_data <- max(data,na.rm = T)
    sd_data <- sd(data)
    new_data <- c(median_data, min_data, quant_1, mean_data,
                  quant_3, max_data, sd_data)
  }
  
  whole_data <- c(whole_data, new_data)
  
  return(as.vector(whole_data))
}


### get name function
get_name <- function(name, num){
  return(paste(name, num, sep="_"))
}

feature_name <- function(list){
  name_data <- c()
  vec <- c("median", "min","quant1","mean", "quant3", "max", "sd")
  
  # data <- list_ele$bars_confidence
  # new_name <- sapply("bars_conf", vec, FUN=get_name)
  # name_data <- c(name_data, new_name)
  # 
  data <- list$bars_start
  new_name <- sapply("bars_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  # data <- list_ele$beats_confidence
  # new_name <- sapply("beats_conf", vec, FUN=get_name)
  # name_data <- c(name_data, new_name)
  # 
  data <- list$beats_start
  new_name <- sapply("beats_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  # data <- list_ele$sections_confidence
  # new_name <- sapply("sec_conf", vec, FUN=get_name)
  # name_data <- c(name_data, new_name)
  
  data <- list$sections_start
  new_name <- sapply("sec_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  # data <- list_ele$segments_confidence
  # new_name <- sapply("seg_conf", vec, FUN=get_name)
  # name_data <- c(name_data, new_name)
  # 
  data <- list$segments_loudness_max
  new_name <- sapply("seg_loud_max", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  data <- list$segments_loudness_max_time
  new_name <- sapply("seg_loud_max_t", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  data <- list$segments_loudness_start
  new_name <- sapply("seg_loud_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  data <- list$segments_start
  new_name <- sapply("seg_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  #data <- list_ele$songs
  #new_name <- names(data)
  #name_data <- c(name_data, new_name)
  
  # data <- list_ele$tatums_confidence
  # new_name <- sapply("tat_conf", vec, FUN=get_name)
  # name_data <- c(name_data, new_name)
  
  data <- list$tatums_start
  new_name <- sapply("tat_start", vec, FUN=get_name)
  name_data <- c(name_data, new_name)
  
  return(name_data)
}


feature <- lapply(sound, FUN=feature_extract)
result <- array(unlist((as.numeric(feature[[1]]))))
for(i in 2:length(feature)){
  result <- rbind(result, array(unlist(as.numeric(feature[[i]]))))
  if (is.list(result))
    print(i)
}
result_df <- as.data.frame(result)

ft_name <- feature_name(sound[[1]])
colnames(result_df) <- ft_name

#replace NA 
result_df <- na.roughfix(result_df)

#########################################################################

#topic modelling 
load("/Users/Ruby/Downloads/Project4_data (1)/lyr.RData")
lyr <- lyr[,-c(2,3,6:30)]
library(topicmodels)
lda_class <- LDA(lyr[,-1], 20, method = "Gibbs")
label <- apply(lda_class@gamma, 1, which.max)
result_df <- cbind(result_df,label)
colnames(result_df)[57] <- "label"


########################## Tune random forest model
# Tune parameter 'mtry'

set.seed(1234)
label = result_df[,57]
bestmtry <- tuneRF(y=as.factor(label), x=result_df[,1:57], stepFactor=1.5, improve=1e-5, ntree=600)
best.mtry <- bestmtry[,1][which.min(bestmtry[,2])]

########################### Get random forest model
rf.fit=randomForest(as.factor(label)~., result_df[,1:56], ntree=600, importance=T)
#data.test <- result_df

#############assign rank for each topic
prop <- exp(lda_class@beta)
lyric_rank <- apply(-prop, 1, rank)



##############test songs
setwd("/Users/Ruby/Desktop/project4/Project4_data")
file_test <- list.files(pattern = ".h5", recursive = TRUE)
file_test  <- as.matrix(file_test)
sound_test <- apply(file_test,1,h5read,"analysis")

#id <- read.table("common_id.txt") 
#names(sound) <- id[,1]

names(sound) <- paste("testsong", 1:100, sep = "_")
feature_test <- lapply(sound_test, FUN=feature_extract)
result_test <- array(unlist((as.numeric(feature_test[[1]]))))
for(i in 2:length(feature_test)){
  result_test <- rbind(result_test, array(unlist(as.numeric(feature_test[[i]]))))
  if (is.list(result_test))
    print(i)
}
result_test_df <- as.data.frame(result_test)

ft_test_name <- feature_name(sound_test[[1]])
colnames(result_test_df) <- ft_test_name

#replace NA 
test_song <- na.roughfix(result_test_df)



test_label <- predict(rf.fit, newdata=test_song, n.trees= 600)
lyric_rank_t <- t(lyric_rank)

final_result = lyric_rank_t[test_label[1],]
for(i in 2:length(test_label)){
  final_result = rbind(final_result, lyric_rank_t[test_label[i],])
}

colnames(final_result) <- colnames(lyr)[-1]
rownames(final_result) <- paste("testsong", 1:100, sep = "_")
write.csv(final_result,file = "submission_file.csv")
