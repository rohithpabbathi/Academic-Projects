
require(plotrix)
require(ggplot2)
library(ggplot2)
library(plotrix)
library (readr)



#mydata <- read.table("C:\Users\Rohan Gulve\Desktop\R prog Directory\Hoboken Dataset.csv", header=TRUE, sep=",", row.names="id")
#mydata1 <- read.table("C:\Users\Rohan Gulve\Desktop\R prog Directory\Manhattan Dataset.csv", header=TRUE, sep=",", row.names="id")
mydata <- read.csv("Hoboken Dataset.csv", header = TRUE)



counts <- table(mydata$Pickup, mydata$Day)
barplot(counts, main="HOBOKEN BOOKINGS",
        xlab="Day",ylab="No.of bookings", col=c("brown"))
        #legend = rownames(counts))

 

slices <- table(mydata$Car_Type) 
lbls <- c("Extended", "Premium", "Luxury","Regular")
pie3D(slices,labels=lbls,explode=0.1,
      main="Pie Chart of Hoboken Uber Cabs")


counts1 <- table(mydata$Car_Type, mydata$Day)
barplot(counts1, main="CAR",
        xlab="Day Hoboken",ylab="Car", col=c("red","cyan","darkblue"),
        legend = rownames(counts1))



p <-ggplot(mydata, aes(Day, Time_Periods, group=1))
p +  geom_line(colour="red", linetype="dashed", size=1)+ geom_point(colour="red", size=2, shape=21, fill="white")




mydata1 <- read.csv("Manhattan Dataset.csv", header = TRUE)



counts2<- table(mydata1$Pickup, mydata1$Day)
barplot(counts2, main="Bookings from Manhattan",
        xlab="Day",ylab="No.of bookings", col=c("darkblue"))
        #legend = rownames(counts2))

slices1<- table(mydata1$Car_Type) 
lbls1<- c("Premium", "Regular", "Extended","Luxury")
pie3D(slices1,labels=lbls1,explode=0.1,
      main="Pie Chart of Cabs Manhattan ")


count3<-table(mydata1$Car_Type, mydata1$Day)
barplot(count3, main="CAR",
        xlab="Day Manhattan",ylab="Car", col=c("red","cyan","darkblue"),
        legend = rownames(count3))



mydata <- read.csv("Manhattan Dataset.csv")
p <-ggplot(wallstreet1, aes(Day, Time_Periods,group=1))
p +  geom_line(colour="red", linetype="dashed", size=1)+ geom_point(colour="red", size=2, shape=21, fill="white")

