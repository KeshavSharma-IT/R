data<-c(10,20,NA,30)
is.na(data)
which(is.na(data))


id<-c(101,102,103,104)
name<-c("aa","bb","cc","dd")
marks<-c(77.8,98,NA,55.5)

student<-data.frame(id,name,marks)
x<-which(is.na(student))
is.na(student)


