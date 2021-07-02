#vector
#collectio of element of the same type
#cannot be of different data types
#vector does not have any dimension
x<-c(1,2,3,4,5)
typeof(x)
x<-c(1,2,3,44.5)

x1<-c("python","java","c","c++")
typeof(x1)

x2<-c(1,2,3,4,5,6)
x2*2

x2-1
x2/3

#creation of sequence we use :
1:10
10:1
-2:12
#operation on two vector
v1<-1:10
v2<- -5:4
v1+v2
v1-v2
v1*v2
v1/v2

v3<-1:2

v1+v3

v4<-c(1,2,3,4)
v1+v4#it will throw an error longer
#must be a multiplier of shorter value

v1+c(2,3,2,2,2)


#compresion of vector

x<-c(1,2,3,4)
y<-c(-5,-6,6,4)
x<=y
x>y
any(x>y)#if any one is true it print true
all(x>y)# if all true it will print true




#accessing individual elements of vector



x<-c(1:10)
x[1]
x[-5]
x[-5:-7]

#we can give name to the vector
v<-c(1,2,3,4,5)
names(v)<-c("a","b","c","d","e")


