#vector seq=sequemnce,rep=repetition

x<-c(10,20,30,40,50)
x
class(x)
typeof(x)
y<-c('a','b','c')
y
class(y)
typeof(y)
z<-c(T,F,T,F)
class(z)
typeof(z)
n<-c(1,2,3,'a','b',TRUE)
class(n)
typeof(n)
x<-c(x,100)
x<-c(x,c(6,5,5,9))

p<-1:5
p
k<-1:15
i<-3
j<-7
o<-i:j

x<-rep(5,3)
x
z<-rep(c(1,2,3),5)
z
p<-rep(c(1,2),each=5)
p
s<-rep(1:4,each=5)

x<-seq(from=1,to=10,by=2)
x
x<-seq(1,20,2)
x
p<-seq(11,1,-2)
p

q<-seq(1,10,length=5)
q
q<-seq(-3,25,length=10)
q

w<-rep(seq(1,3,0.5),3)
w

#indexing in vector
x<-c(10,20,30,40,50,60,70,90)
x[2]
#in order to access several componemt
x[2:5]
x[c(1:4)]
x[c(1:4,7)] # 1to 4 and 7the no also

x
x[-2] #it remove 2nd value

#naming vector
salary<-c(4000,2700,3200)
names(salary)<-c("john","keshav","aman")
salary

salary["john"]

#vector filtring
x<-c(10,20,30,40,50,60,70,80,90)
y<-x[x>45]
y
z<-x[x<70]
z
p<-x[x!=30]
y<-x[x>27&x<83]
y
y<-x[x<35|x>71]
y
