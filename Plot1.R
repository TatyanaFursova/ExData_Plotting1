a<-read.table("household_power_consumption.txt", header=TRUE, sep=";")
a1<-subset(a, a$Date == "1/2/2007" | a$Date == "2/2/2007")
a1$Global_active_power<-as.numeric(a1$Global_active_power)
with(a1, hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)",  xaxt="n"))
axis(1, at=seq(0, 3000, by=1000), c (0,2,4,6))

dev.copy(png, 'plot1.png')
dev.off()