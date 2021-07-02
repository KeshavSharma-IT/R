df <- library(plyr) 
df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print(df)
rename(df,c("row1"="C1","row2"="C2","row3"='C3'))
names(df)[names(df)=="row3"]<-"Third Column"
df
names(df)[2]<-"two"
df
df[["col4"]]<-0
df$"col5"<-NA
df[["col5"]] <- df[["row1"]] + df[["two"]] 
df[["two"]]<-NULL