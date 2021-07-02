id<-c(101,102,103,104)
name<-c("aa","bb","cc","dd")
marks<-c(77.8,98,67,55.5)
student<-data.frame(id,name,marks)
student<-rbind(student,data.frame(id=105,name="xyz",marks="55.6"))
student<-cbind(student,age=c(10,12,14,12,24))
student2<-edit(student)

#missing data

v1<-c(1,2,3,4,NA,5,6)
is.na(v1)
id<-c(101,102,103)
temp<-c(34.6,23,41.4)
wind<-c(34,30,23)
humidity<-c(55,NA,44)
weather<-data.frame(id,temp,wind,humidity)
weather1<-complete.cases(weather)
weather[weather1]
weather[weather1,]


#read.table(file name,header,sep,nrow,skip)

myrecord<-read.table("c:/R/mydata1.txt")
myrecord1<-read.table("c:/R/mydata1.txt",header =T,sep=',')
myrecord2<-read.table("c:/R/mydata1.txt",header =T,sep=',',nrows = 4)
myrecord3<-read.table("c:/R/mydata1.txt",header =T,sep=',',nrows = 4,skip=2)

