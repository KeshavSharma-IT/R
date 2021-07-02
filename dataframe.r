data frame

data.frame()
read.table()
read.csv()

name<-c("mohit","keshav","riya")
id<-c(101,102,103)
marks<-c(33.5,66.4,89.9)
student<-data.frame(name,id,marks)
student


student[1]
student[2]
student[3]
student[[3]][2]
student[[1]][3]
student[1,]
student[,1]
student[2:3,2]
student[-2,-2]
student[c(1,2),c(2,3)]
student$name
student$id
student$marks
student$marks[3]<-100


#data frame subsets
name<-c("mohit","sohan","riya","deepak","vineet")
id<-c(101,102,103,104,105)
marks<-c(55.3,67.9,88.7,45.8,89.9)
std1<-data.frame(name,id,marks)

report1<-subset(std1,marks>70)
report2<-subset(std1,id>103& marks>70)
report3<-subset(std1,marks>70,select=name)
report4<-subset(std1,marks>70,select=c(name,marks))
report4<-subset(std1,marks<70,select=c(name,marks))
report5<-subset(std1,marks>70,select=name:id)
report6<-subset(std1,marks>70,select=-name)
rbind() & cbind()
std1<-rbind(std1,data.frame(name="vikas",id=201,marks=100))
std1<-rbind(std1,data.frame(name="sajal",id=202,marks=12.5))
std1<-cbind(std1,age=c(56,78,56,89,65,78,98))
