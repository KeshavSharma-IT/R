bank.data
summary(bank.data)
mydata<-bank.data[,-1]
mydata

#split modal - 2part
#80% Traning
#20% Testing
set.seed(1)
sampleid<-sample(2,600,replace=T,prob=c(0.8,0.2))
sampleid

myresut<-cbind(mydata,sampleid)
head(myresut)
traning<-mydata[sampleid==1,]
test<-mydata[sampleid==2,]
attach(traning)
summary(traning)
age
library(rpart)
library(rpart.plot)

mymodal<-rpart(pep~age+sex+region+income+married+children+car+save_act+current_act+mortgage,method ='class',control=rpart.control(minsplit = 2))
plotcp(mymodal,col='red',pch=16)
mymodal<-prune(mymodal,cp=0.013)
rpart.plot(mymodal)

predy<-predict(mymodal,type='class')
mytable<-table(traning$pep,predy)
mytable
round(prop.table(mytable)*100,2)

# prediction of test data

predtest<-predict(mymodal,type = 'class',newdata = test)
mytesttable<-table(test$pep,predtest)
mytesttable
round(prop.table(mytesttable)*100,2)

