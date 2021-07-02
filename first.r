2+3

x<-c(1,2,3,4,5,6)
x
print(x)
typeof(x)

is.vector(x)
x2<-c("srm","university")
x2
x3<-c(6,7,x)
x3
# there are six types of atomic vector in R
#1.double
#2.integer
#3.character
#4.logical
#5.complex
#6.row

y1<-c(1L,2L,3L)
typeof(y1)
ch<-c("srm","university")
typeof(ch)
z<-c(x,ch)
z
lo<-c(TRUE,FALSE,T,F)
typeof(lo)
lo

cm<-c(1+2i,3-4i)
typeof(cm)
cm

r<-raw(3)
r