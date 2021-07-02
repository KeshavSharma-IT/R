#matrix
#two dimension data structure

mat1<-matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3)
mat2<-matrix(11:18,nrow = 2,ncol = 4,byrow = TRUE)
mat3<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow = 2,ncol = 5,byrow = TRUE)
colnames(mat3)<-c("col1","col2","col3","col4","col5")
rownames(mat3)<-c("row1","row2")
mat4<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow=2,ncol=5,byrow = T)


#how to access element of a matrix
mat1
mat4[1,]
mat4[,2]
mat4[1:2,2:3]
mat4[1,3:5]
cbind(p=1:4,q=5:8,r=9:12)
rbind(p=1:4,q=5:8,r=9:12)
t<-t(mat4)
mat5<-matrix(c(1,2,3,4,1,2,3,4,5),nrow = 3,ncol = 3)
mat5[3,3]<-0

mat4[mat4<2]<-0

a<- matrix(c(1:8,10),3,3, byrow = T )
x=<-c(1,2,3)
b<-matrix(c(1,2,3,1,2,3,1,2,3),3,3,byrow = T)
a*b
a%*%b
t(a)
det(a)
diag(a)
solve(a)
cbind(a,b)
rbind(a,b)
newm<-cbind(a,b)
newmb<-rbind(a,b)
sum(diag(a))
diag(c(1,1,1))
diag(diag(a))
length(a)
dim(a)




x<-matrix(c(1:9),3,3)
t(x)%*%solve(x%*%t*(x))%*%x

