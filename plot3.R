dat=read.csv("household_power_consumption.txt",sep=";")
dat=dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$Date=as.Date(dat$Date, "%d/%m/%Y"))
dat$Time=as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%m-%d %H:%M:%S")
dat$Global_active_power=as.numeric(dat$Global_active_power)
dat$Voltage=as.numeric(dat$Voltage)
dat$Global_reactive_power=as.numeric(dat$Global_reactive_power)
dat$Global_intensity=as.numeric(dat$Global_intensity)
dat$Sub_metering_1=as.numeric(dat$Sub_metering_1)
dat$Sub_metering_2=as.numeric(dat$Sub_metering_2)
dat$Sub_metering_3=as.numeric(dat$Sub_metering_3)

plot(dat$Sub_metering_1~dat$Time,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(dat$Sub_metering_2~dat$Time,type="l",col="red")
lines(dat$Sub_metering_3~dat$Time,type="l",col="blue")
legend("topright", legend = names(dat)[7:9], col=c("black","blue","red"), pch=16)

dev.copy(png,"plot3.png")
dev.off()
