dat=read.csv("household_power_consumption.txt",sep=";")
dat=dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$Date=as.POSIXct(strptime(dat$Date, "%d/%m/%Y"))
dat$Global_active_power=as.numeric(dat$Global_active_power)
dat$Voltage=as.numeric(dat$Voltage)
dat$Global_reactive_power=as.numeric(dat$Global_reactive_power)
dat$Global_intensity=as.numeric(dat$Global_intensity)
dat$Sub_metering_1=as.numeric(dat$Sub_metering_1)
dat$Sub_metering_2=as.numeric(dat$Sub_metering_2)
dat$Sub_metering_3=as.numeric(dat$Sub_metering_3)
par(mfrow=c(2,2))
#1
plot(dat$Global_active_power,type="l",col="black",xlab="",ylab="Global Active Power")
#2
plot(dat$Voltage,type="l",col="black",xlab="",ylab="Voltage")
#3
plot(dat$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(dat$Sub_metering_2,type="l",col="red")
lines(dat$Sub_metering_3,type="l",col="blue")
legend("topright", legend = names(dat)[7:9], col=c("black","blue","red"), pch=16)
#4
plot(dat$Global_reactive_power,type="l",col="black",xlab="",ylab="Global Reactive Power")
dev.copy(png,"plot4.png")
dev.off()
