#url.show('https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2019-financial-year-provisional/Download-data/annual-enterprise-survey-2019-financial-year-provisional-csv.csv')
mydata<-read.table('https://www.stats.govt.nz/assets/Uploads/Annual-enterprise-survey/Annual-enterprise-survey-2019-financial-year-provisional/Download-data/annual-enterprise-survey-2019-financial-year-provisional-csv.csv',sep=',',head=T)
mydata

id<-c(10,20,30,40)
name<-c("aa","bb","cc","dd")
marks<-c(67.8,89.7,55.6,99.2)

students<-data.frame(id,name,marks)
write.csv(students,'output.csv',row.names = F)

