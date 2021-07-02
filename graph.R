library(tidyverse)
data()
?msleep()
names(msleep)

summary(msleep)
View(msleep)
msleep %>%
    drop_na(vore)%>%
    ggplot(aes(x=vore))+
    geom_bar(fill="#97B3C6")+
    them_bw()+
    labs(x='vore',
    y=NULL,title="no of observation")


msleep %>%
  ggplot(aes(x=awake))+
  geom_histogram()+
  theme_bw()+
  labs(x="total sleep",
       y=NULL,
       title="Sleep Histo")




