dat=read.csv("household_power_consumption.txt",sep=";")
dat=dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$Date=as.POSIXct(strptime(dat$Date, "%d/%m/%Y"))
dat$Global_active_power=as.numeric(dat$Global_active_power)
plot(dat$Global_active_power/1000,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,"plot2.png")
dev.off()
