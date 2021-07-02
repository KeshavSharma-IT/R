library(naivebayes)
library(dplyr)
library(ggplot2)
library(psych)
data
View(data)
str(data)
data$rank<-as.factor(data$rank)
data$admit<-as.factor(data$admit)
names(data)
names(data[-1])

pairs.panels(data[-1])
data %>%
  ggplot(aes(x=admit,y=gre,fill=admit))+
    geom_boxplot()+
    ggtitle('Boxplot')
data %>%
  ggplot(aes(x=admit,y=gpa,fill=admit))+
  geom_boxplot()+
  ggtitle('Boxplot')
data %>%
  ggplot(aes(x=gre,fill=admit))+
  geom_density(alpha=0.8,color='black')+
  ggtitle('Density plot')

set.seed(1234)
ind<-sample(2,nrow(data),replace = T,prob = c(0.8,0.2))
train<-data[ind==1,]
test<-data[ind==2,]

modal<-naive_bayes(admit~.,data=train)
model
train %>%
  filter(admit=='1')%>%
  summarise(mean(gre),sd(gre))
train %>%
  filter(admit=='0')%>%
  summarise(mean(gre),sd(gre))
p<-predict(modal,train,type='prob')
head(cbind(p,train))
p1<-predict(model,train)
tab1<-tab1(p1,train$admit)
1-sum(diag(tab1))/sum(tab2)
