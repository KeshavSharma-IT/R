
withbox<-function(str){
  print("**********")
  print(paste("*",str,"*"))
  print("**********")
}
withbox("krdr")

meanrand<-function(n){
  x=rnorm(n,1,10)
  y=mean(x)
  z=c(x)
  p=sd(z)
  print(paste("here is 100 random no",x))
  print(paste("mean of 100 no is",y))
  print(paste("sd of 100 no is",p))

}
meanrand(5)
