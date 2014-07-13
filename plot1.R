dat=read.csv("household_power_consumption.txt",sep=";")
dat=dat[dat$Date %in% c("1/2/2007","2/2/2007"),]
dat$Global_active_power=as.numeric(dat$Global_active_power)
hist(dat$Global_active_power/1000,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.copy(png,"plot1.png")
dev.off()
