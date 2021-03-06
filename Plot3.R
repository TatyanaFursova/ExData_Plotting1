a<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
a1<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
a1$Sub_metering_1<-as.numeric(a1$Sub_metering_1) 
a1$Date<-as.Date(a1$Date, format="%d/%m/%Y")
a1$weekday<-weekdays(a1$Date)
a1$Date_Time<-paste(a1$Date, a1$Time, Sep=" ")
a1$DT<-as.POSIXct(a1$Date_Time, format = "%Y-%m-%d %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(a1$Sub_metering_1~a1$DT, type="l", xlab="", ylab="Energy sub metering")
a1$Sub_metering_2<-as.numeric(a1$Sub_metering_2)
lines(a1$DT, a1$Sub_metering_2, col="red")
a1$Sub_metering_3<-as.numeric(a1$Sub_metering_3)
lines(a1$DT, a1$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(2,2,2), col=c("black", "red", "blue"))


dev.off()