install.packages("tidyverse")
library("tidyverse")
*pt1 rbase
install.packages("nycflights13")
nycflights13::air
x12<-inner_join (nycflights13::airlines,nycflights13::flights,by="carrier")
a<-sample(1:nrow(x12),100000)
data_flight<-x12[a,]
factor_data_flight<-factor(data_flight$name)
class(factor_data_flight)
data_flight_group<-group_by(data_flight,name)
data_flight_group
summarise(data_flight_group,nub=n(),mean_nub=mean(distance),mean_dep=mean(dep_delay,na.rm=TRUE))
data_flight$dep_delay
install.packages("ggplot2")
library("ggplot2")
ggplot(data=data_flight_group,mapping = aes(x=month,y=mean(distance)))+geom_point()
data_flight_group_by_month<-group_by(data_flight,month)
summarise(data_flight_group_by_month,nub=n(),dis=mean(distance))
ggplot(data=data_flight_group_by_month,mapping = aes(x=month,y=mean(distance)))+geom_point()
dis<-c(mean(data_flight_group_by_month$distance))
ggplot(data=data_flight_group_by_month,mapping = aes(x=month,y=dis))+geom_point()
dis
