#KNN with iris data set
str(iris)
table(iris$Species)
head(iris)
iris
set.seed(2)
#runif(10)
#runif(150)
gp<-runif(nrow(iris))
gp
order(gp)
?order()
iris<-iris[order(gp),]
str(iris)
head(iris)
head(iris,10)


# We have to rescale our numerical features
# KNN works well with numerical
# Even target is also numerical
summary(iris)
summary(iris[,c(1,2,3,4)])
# range of all features are different
# KNN uses distance,hence every feature must be normalised
# we have to change rage from 0 to 1

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
