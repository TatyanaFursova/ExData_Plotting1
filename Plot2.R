a<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
a1<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
a1$Global_active_power<-as.numeric(a1$Global_active_power)
a1$Date<-as.Date(a1$Date, format="%d/%m/%Y")
a1$weekday<-weekdays(a1$Date)
a1$Date_Time<-paste(a1$Date, a1$Time, Sep=" ")
a1$DT<-as.POSIXct(a1$Date_Time, format = "%Y-%m-%d %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(a1$Global_active_power~a1$DT, type='l', xlab="", ylab="Global Active Power (kilowatts)")


dev.off()