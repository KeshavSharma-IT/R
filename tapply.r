#tapply(x=,index=,fun=,simplify=)
#tapply(vector,index,function)
attach(data1)
names(data1)


mean(Age[Smoke=='yes'])
mean(Age[Smoke=='no'])
tapply(X=Age,INDEX=Smoke,FUN=mean,na.rm=T)
tapply(X=Age,INDEX=Smoke,FUN=min,na.rm=T)
tapply(X=Age,INDEX=Smoke,FUN=max,na.rm=T)
tapply(Age,Smoke,mean)
tapply(Age,Smoke,min)
tapply(Age,Smoke,max)
tapply(Age,Smoke,summary)
tapply(Age,Smoke,quantile,probs=c(0.2,0.8))
mean(Age[Smoke=='yes' & Gender=='female'])
mean(Age[Smoke=='no' & Gender=='female'])
mean(Age[Smoke=='no' & Gender=='male'])
mean(Age[Smoke=='yes' & Gender=='male'])
tapply(X=Age,INDEX=list(Smoke,Gender),FUN=mean,na.rm=T)

by(Age,list(Smoke,Gender),mean,na.rm=T)
temp<-by(Age,list(Smoke,Gender),mean,na.rm=T)
temp[1]
temp[2]
temp[3]
temp[4]
class(temp)
temp2<-c(temp)
temp2
class(temp2)
