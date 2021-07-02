customer<-read.table("C:/Users/DELL/Downloads/Data Files/Data Files/1. ST Academy - Crash course and Regression files/Customer.csv",header=TRUE,sep=",")
View(customer)
hist(customer$Age)
hist(customer$Age, breaks=5)
hist(customer$Age, breaks=c(0,40,60,100), freq = T)
hist(customer$Age, breaks=c(0,40,60,100), freq = T,col="blue")
hist(customer$Age, breaks=c(0,40,60,100), freq = T,col="blue")
hist(customer$Age, breaks=c(0,40,60,100), freq = T,col=c("blue","green","pink","red"),main="Histogram of age")

