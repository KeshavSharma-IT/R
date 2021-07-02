library(tidyverse)
View(Orange)
Orange%>%
  filter(Tree!='2')%>%
  ggplot(aes(x=age,y=circumference))+
  geom_point()+
  geom_smooth()+
  facet_wrap(~Tree)+
  theme_bw()+
  labs(title="Tree age and circumference")

Orange %>%
  filter(Tree!="1"& Tree!="2")%>%
  ggplot(aes(age,circumference,color=Tree))+
  geom_point(size=5,alpha=0.3)+
  geom_line(size=1)+
  theme_minimal()+
  labs(title="Tree Age and circumference")
