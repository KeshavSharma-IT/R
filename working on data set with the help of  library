library("dplyr")
library(sqldf)
library(leaflet)

data(quakes)
#1.print first 10 records of the dataset.
head(quakes,10)
#2.create dataframe of the quakes dataset.
df=data.frame(quakes)
df
View(df)
attach(df)
#3. Change column name of the data frame to "Latitude", "Longitude", "Depth", "Magnitude", "NumberOfStations".

df <-
  rename(
     lat= Latitude,
    long = Longitude,
    depth=Depth,
    mag=Magnitude,
    stations=NumberOfStations
  )
#4. Adding new “year” column to the data frame. Assign random years ranging from 1964 - 2021.
rename(df, c("Latitude"= "lat",
             "Longitude" = "long",
             "Depth"="depth",
             "Magnitude"="mag",
             "NumberOfStations"="stations"))
View(df)
year<-c(1964:2021)
year
year2<-sample(year,size=1000,replace=T)
year2
df$Year <- year2
View(df)
#5. Extract 10 to 20 rows from the dataframe.
df[10:20,]
#6. Show all rows except row 51 to 1000.
df[1:50,]
#7. Show first and last 10 rows.
head(quakes,10)
tail(quakes,10)
#8. Show magnitude of row 1 to 10.
df$mag[1:10]



dfmag<-df[df$mag>5.5]
dfmag
#9. Show rows having magnitude higher than 5.5.
df[(df$mag>5.5),]

#10. Show rows having latitude -32.22 and longitude 180.20.
newdata <- df[ which(df$lat==-32.22
                         & df$long==180.20), ]
newdata

#11. Show row having the highest magnitude.
df[which.max(df$mag),]

#12. Show the average magnitude of all rows.
df[mean(df$mag)]
#or
colMeans(df)
#or
mean(mag)
#13. Show total number of stations affected.
Z=sum(stations)
Z

#14. Using Dplyr, show total number of events by year and sort the results using year in ascending order.

df %>% arrange(Year)

#15. Using Dplyr, show latitude, longitude and magnitude of rows having magnitude higher than 5.5 and sort the results using magnitude in descending order.

magnew<- subset(df, mag>5.5, select = c("lat","long","depth","mag","stations","Year"))
magnew
#16. Add two rows from new data frame
lat<-c(-20.47,-17.82)
long<-c(182.62,166.67)
depth<-c(562,650)
mag<-c(4.80,4.9)
stations<-c(41,15)
Year<-c(1980,1982)
df2<-data.frame(lat,long,depth,mag,stations,Year)
newdata<-rbind(df,df2)
newdata
