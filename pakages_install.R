#1.go to tools and click on install selevt package and install

install.packages("LiblineaR")
library()#it will give list of package installed
search()#it will give list of packages which are load
require("LiblineaR")#to load a package which is install
detach("package:LiblineaR",unload=TRUE)
remove.packages("LiblineaR")

#to remove u simple untick from packages-->
                  #first go to package and  install-->>
data()
library(help="datasets")
str(iris) #structure of data
iris  # it represent data

