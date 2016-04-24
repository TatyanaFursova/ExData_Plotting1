a<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
a1<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
a1$Global_active_power<-as.numeric(a1$Global_active_power)

png("plot1.png", width=480, height=480)
with(a1, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
dev.off()