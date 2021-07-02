product<-read.table("C:/Users/DELL/Downloads/Data Files/Data Files/1. ST Academy - Crash course and Regression files/Product.txt",header=TRUE,sep="\t")
str(product)
View(product)
customer<-read.table("C:/Users/DELL/Downloads/Data Files/Data Files/1. ST Academy - Crash course and Regression files/Customer.csv",header=TRUE,sep=",")
View(customer)

y<-table(customer$Region)
y
View(y)
barplot(y)
barplot(y[order(y)])
barplot(y[order(-y)])
barplot(y[order(y)],horiz = TRUE)
barplot(y[order(y)],horiz = TRUE,col = "red")
barplot(y[order(y)],horiz = TRUE,col =c("red","green","blue","beige"))
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border=NA)
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border=NA,main ="Freq of regions" )
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border=NA,main ="Freq of regions",xlab="Number of customer" )


png(filename="C:/Users/DELL/Downloads/Data Files/fisrt.png", width=888, height=575)
barplot(y[order(y)],horiz = TRUE,col = c("red","green","blue","beige"),border=NA,main ="Freq of regions",xlab="Number of customer" )
dev.off()





