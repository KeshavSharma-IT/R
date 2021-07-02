data<-mydata
str(data)
View(data)
summary(data)
data$NSPF<-factor(data$NSP)
NSPF
str(NSPF)
#PREPARE data into traning and testing
set.seed(1234)
pd<-sample(2,nrow(data),replace=T,prob = c(0.8,0.2))
pd
train<-data[pd==1,]
validate<-data[pd==2,]
#decision tree
library(party)
tree<-ctree(NSPF~LB+AC+FM,data=train)
tree
plot(tree)
#modify tree
tree<-ctree(NSPF~LB+AC+FM,data=train,controls = ctree_control(mincriterion = 0.9,minsplit = 500))
plot(tree)

predict(tree,validate,type='prob')
predict(tree,validate)

# decision tree with rpart

library(rpart)
tree1<-rpart(NSPF~LB+AC+FM,train)
library(rpart)
#rpart.plot(tree1)
rpart.plot::rpart.plot(tree1)


# Prediction
predict(tree1,validate)


# Misclassification error for 'Train Data'
tab<-table(predict(tree),train$NSPF)
print(tab)
1-sum(diag(tab))/sum(tab)

trainPred<-predict(tree,newdata=train)
tab<-table(trainPred,train$NSPF)
print(tab)
1-sum(diag(tab))/sum(tab)



# Misclassification error for 'Test Data'
testPred<-predict(tree,newdata=validate)
tab<-table(testPred,validate$NSPF)
print(tab)
1-sum(diag(tab))/sum(tab)

