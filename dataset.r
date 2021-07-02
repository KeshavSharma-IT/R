data1<-read.table(file="C:/Users/DELL/Downloads/LungCapData.txt",header = TRUE,sep="\t")

data2<-read.table(file.choose(),header=T,sep="\t")

View(data3)
#head(data3) it will display first 6 record
#tail(data3) it will display last 6 record
#data3[row,columan] it will display selected record
#data3[c(5,6,7,8),] it will display 5,6,7,8 row with all column
#data3[5:9,] it will display same as above
#data3[-(4:722),] it will exclude given lines or data
#names(data3) it will display the name of attribute
#data3$Age it will extract age in the data
head(data3)
tail(data3)
data3[1,3]
data3[c(5,6,7,8),]
data3[5:9,]
data3[-(4:722),]
names(data3)
data3$Age
mean(data3$Age)
max(data3$Age)
min(data3$Age)
median(data3$Age)
attach(data3)
max(Age)
detach(data3)
max(Age)
attach(data3)
class(data3)
class(Age)
class(Gender)
class(LungCap)

Gender

Gender<-as.factor(Gender)
Gender
class(Gender)
summary(Gender)
Smoke
Smoke<-as.factor(Smoke)
Smoke
class(Smoke)
summary(Smoke)
Age
summary(Age)
Age[11:14]
Age[Gender=='female']
mean(Age[Gender=='female'])
femdata<-data3[Gender=='female',]
maledata<-data3[Gender=='male',]
dim(femdata)
dim(maledata)
m<-maledata[Gender=="male" && Age>15]

