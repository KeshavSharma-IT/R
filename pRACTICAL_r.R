# v1<-c(1:10)
# v2<-c(-5:4)
#
# v1+v2
# v1-v2
# v1*v2
# v1/v2

# v1<-c(1,2,3,4)
# v2<-c(5,6,7,8)
# names(v1)<-c("one","two","three","four")
# v1
# names(v2)<-c("five","six","seven","eight")
# v2
# v=c(v1,v2)
# v


# Sports1<-c('Football','Hockey','Baseball','Ruby','Lacrosse','Basketball','Tennis','Cricket','Soccer')
# Sports1
# Sports<-c(Sports1,'Hockey','Baseball','Hockey','Lacrose','Water Polo')
# Sports
# nlevels(Sports)


# x <- c(10,9,8,7,6,5,4,3,2,1)
# y <- c(-4,-3,-2,-1,0,1,2,3,4,5)
# q<- c('Football','Hockey','Baseball','Ruby','Lacrosse','Basketball','Tennis','Cricket','Soccer' ,'Curling')
# df<-data.frame(x,y,q)
# df
# names(df)<-c("First","Second",'Sports')
# df
# nrow(df)
# ncol(df)
# dim(df)
# df[,3]
# df[2,]
# df[3,2]



# m1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3,byrow=TRUE)
# m2<-matrix(c(9,8,7,6,5,4,3,2,1),nrow=3,ncol=3,byrow=TRUE)
# m1
# m2
# rownames(m1)<-c('X','Y','Z')
# colnames(m1)<-c('A','B','C')
# m1
# rownames(m2)<-c('X','Y','Z')
# colnames(m2)<-c('A','B','C')
# m2
#
# m1*m2
# m1+m2
# m1-m2


# square_of_num<-function(x){
#   x*x
# }
# square_of_num(1:10)



# city<-c("Delhi", "Meerut", "Ghaziabad", "Vaishali")
# state<-c("DL","UP","UP","UP" )
# zipcode<-c(110093,102002,102021,221101)
# df1<-data.frame(city,state,zipcode)
# df1
# df2<-df1
# df2
# merge(df1,df2,by=0)

#
# library(dplyr)
# data1<-read.csv(file="input.csv",header = TRUE,sep=",")
# data1
# nrow(data1)
# ncol(data1)
# #
# max_sal_data <- subset(data1, salary == max(salary))
# max_sal_data
# min_sal_data<-subset(data1, salary == min(salary))
# min_sal_data
# IT_dapart<-subset(data1, salary > 600 & dept == "IT")
# IT_dapart
# join_on_or_2014<-subset(data1, as.Date(start_date) > as.Date("2014-01-01"))
# join_on_or_2014
#   write.csv(join_on_or_2014,"output.csv")
# newdata <- read.csv("output.csv")


#
# a <- c(1,2,3,4)
# a
# b <- rnorm(10)
# b
# c <- rnorm(20:1)
# c
# d <- rnorm(100:5)
# d
# list_data <- list(a,b,c,d)
# list_data
# result_mean_a <- mean(a)
# result_mean_a
# result_mean_b <- mean(b)
# result_mean_b
# result_mean_c <- mean(c)
# result_mean_c
# result_mean_d <- mean(d)
# result_mean_d

# library(datasets)
# data <- read.csv(file.choose('city_day.csv'),stringsAsFactors = TRUE)
# str(data)
# names(data)
# summary(data)
# summary(data$PM2.5)
# summary(data$PM10)
# summary(data$NO)
# summary(data$NO2)
# summary(data$NOx)
# summary(data$NH3)
# summary(data$CO)
# summary(data$SO2)
# summary(data$O3)
# summary(data$O3)
# summary(data$Benzene)
# summary(data$Toluene)
# summary(data$Xylene)
# summary(data$AQI)


# library(dplyr)
# mydata <- read.csv('data.csv')
# mysubdata <- select(mydata,id,age,income)
# barplot(mysubdata$age,xlab = 'id',ylab= 'income',main = 'id vs income', col = 'blue')

# library(dplyr)
# mydata <- read.csv('data.csv')
# mysubdata <- select(mydata,age)
# hist(mysubdata$age,xlab = 'age',main = 'age',col = 'blue')

#
# library(dplyr)
# data <- read.csv('data.csv')
# data
# newdata <- select(data,id,age,car)
# hist(newdata$age,xlab = "car",ylab = "age",main = "car vs age",col = 'red' )

# cars <- c(1, 3, 6, 4, 9)
# trucks <- c(2, 5, 4, 5, 12)
# plot(cars, type="o", col="pink", ylim=c(0,12))
# lines(trucks, type="o", pch=22, lty=2, col="green")
# title(main="Car & Truck", col.main="red", font.main=4)


# library(rpart)
# library(rpart.plot)
# data <- read.csv('height.csv')
# data
# tree <- rpart(Height ~Gender+Weight,data)
# a <- data.frame(Gender = c("Male"),Weight=c(210))
# result <- predict(tree,a)
# print(result)
# tree <- rpart(Gender ~ Height+Weight,data)
# a <- data.frame(Height = c(70),Weight=c(210))
# result <- predict(tree,a)
# print(result)
# rpart.plot(tree)



# library(naivebayes)
# library(dplyr)
# library(ggplot2)
# library(psych)
# data <- read.csv('binary.csv')
# str(data)
# data$rank<-as.factor(data$rank)
# data$admit<-as.factor(data$admit)
# names(data[-1])
# pairs.panels(data[-1])
# data %>%
#   ggplot(aes(x=admit,y=gre,fill=admit))+
#   geom_boxplot()+
#   ggtitle("Boxplot")
# data %>%
#   ggplot(aes(x=admit,y=gpa,fill=admit))+
#   geom_boxplot()+
#   ggtitle("Boxplot")
# data %>%
#   ggplot(aes(x=gre,fill=admit))+
#   geom_density(alpha=0.8,color='black')+
#   ggtitle('Density Plot')
# data %>%
#   ggplot(aes(x=gpa,fill=admit))+
#   geom_density(alpha=0.8,color='black')+ ggtitle('Density Plot')
# set.seed(1234)
# ind<-sample(2,nrow(data),replace=T,prob=c(0.8,0.2))
# train<-data[ind==1,]
# test<-data[ind==2,]
# model<-naive_bayes(admit~.,data=train,usekernel = T)
# model
# train %>%
#   filter(admit=='1') %>%
#   summarise(mean(gre),sd(gre))
# train %>%
#   filter(admit=='0') %>%
#   summarise(mean(gre),sd(gre))
# p<-predict(model,train,type='prob')
# head(cbind(p,train))
# p1<-predict(model,train)
# tab1<-table(p1,train$admit)1-sum(diag(tab1))/sum(tab1)
# p2<-predict(model,test)
# tab2<-table(p2,test$admit)
# 1-sum(diag(tab2))/sum(tab2)
#

#
library(ggplot2)
library(cowplot)
library(randomForest)

url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data"
data<-read.csv(url,header=F)
head(data)
colnames(data)<-c("age","sex","cp","trestbsp","chol","fbs","restecg","thalach","exang","oldpeak","slope","ca","thal","hd")
head(data)
str(data)
summary(data)

#clean the data
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

data$hd<-ifelse(test=data$hd==0,yes="Healthy",no="Unhealthy")
data$hd<-as.factor(data$hd)
str(data)


set.seed(42)
data.imputed<-rfImpute(hd~.,data=data,iter=6)
model<-randomForest(hd~.,data=data.imputed,proximity=T)
model

# Ploting
oob.error.data<-data.frame(
  trees=rep(1:nrow(model$err.rate),times=3),
  type=rep(c("OOB","Healthy","Unhealthy"),each=nrow(model$err.rate)),
  error=c(model$err.rate[,"OOB"],model$err.rate[,"Healthy"],model$err.rate[,"Unhealthy"]))


ggplot(data=oob.error.data,aes(x=trees,y=error))
geom_line(aes(color=Type))

obb.values<-vector(length=10)

for(i in 1:10){
  temp.model<-randomForest(hd~.,data=data.imputed,mtry=i,ntree=1000)
  obb.values[i]<-temp.model$err.rate[nrow(temp.model$err.rate),1]
}
obb.values



#KNN with iris data set
str(iris)
table(iris$Species)
head(iris)
iris
set.seed(2)
gp<-runif(nrow(iris))
gp
order(gp)
?order()
iris<-iris[order(gp),]
str(iris)
head(iris)
head(iris,10)

summary(iris)
summary(iris[,c(1,2,3,4)])


normalize<-function(x){
  return((x-min(x))/(max(x)-min(x)))
}
normalize(c(1,2,3,4,5))
normalize(c(10,20,30,40,50))

# normalise iris data (preprocess require for KNN)
iris_n<-as.data.frame(lapply(iris[,c(1,2,3,4)], normalize))
str(iris_n)
summary(iris_n)

#Create test data set and train data set
str(iris)
iris_train<-iris_n[1:129,]
iris_test<-iris_n[130:150,]
iris_train_target<-iris[1:129,5]
iris_test_target<-iris[130:150,5]

# now we have to feed every thing into knn algorithm which is in class package
require(class)
sqrt(150)

m1<-knn(train=iris_train,test = iris_test,cl=iris_train_target,k=13)
#m1 will store prediction of all   values in test data frame
m1

# Confusion matrix ,Actual VS Test
table(iris_test_target,m1)




# library(dplyr)
# mydata <- read.csv('output.csv')
# mydata
# mysubdata <- select(mydata,id,marks)
# barplot(mysubdata$id,xlab = 'marks',ylab = 'id',main = 'marks vs id', col = 'red')


library(tidyverse)
library(ggplot2)
View(Orange)
names(Orange)
Orange %>%
  filter(Tree!="1" & Tree!="2") %>%
  ggplot(aes(age,circumference,color=Tree))+
  geom_point(size=5,alpha=0.5)+
  geom_line(size=1)+
  theme_minimal()+
  labs(title="Tree Age and Circumference")





library(datasets)
data(airquality)
airquality
names(airquality)
head(airquality,10)
summary(airquality)

library(ggplot2)
df <- data.frame(x = c(0, 2, 10, 8), p = c(2.2, 3.8, 1.6, 7.6), q = c(4.5, 6.8, 9.3, 10.5) ,g=c(5, 9, 6, 8))
ggplot(df, aes(x)) +
  geom_line(aes(y = y, colour = "p")) +
  geom_line(aes(y = z, colour = "q")) +
  geom_line(aes(y = g, colour = "r"))

