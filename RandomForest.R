library(ggplot2)
library(cowplot)
library(randomForest)

url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data"
data<-read.csv(url,header = F)

colnames(data)<-c("age","sex","cp","trestbps","chol","fbs","restecg","thalach","exang","oldpeak","slope","ca","thal","hd")
View(data)
head(data)
summary(data)

data[data=="?"]<-NA

data[data$sex==0,]$sex<-"F"
data[data$sex==1,]$sex<-"M"

data$sex<-as.factor(data$sex)

data$fbs<-as.factor(data$fbs)

data$restecg<-as.factor(data$restecg)

data$exang<-as.factor(data$exang)

data$slope<-as.factor(data$slope)

data$ca<-as.integer(data$ca)
data$ca<-as.factor(data$ca)

data$thal<-as.integer(data$thal)
data$thal<-as.factor(data$thal)

data$hd<-ifelse(test = data$hd==0,yes = "Healthy", no="unHealthy")
data$hd<-as.factor(data$hd)
summary(data)
str(data)

set.seed(42)
data.imputed<-rfImpute(hd~.,data=data,iter=6)
model<-randomForest(hd~.,data=data.imputed,proximity=T)
model
