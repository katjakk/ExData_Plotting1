png(filename = "plot4.png")
dat <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
#cnames <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#names(dat) <- cnames
dat$datetime <- strptime(paste(dat$V1, dat$V2), format="%d/%m/%Y %H:%M:%S", tz="GMT")
par(mfcol=c(2,2))
# plot 1 
plot(dat$datetime, dat$V3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
# plot 2
plot(dat$datetime, dat$V7, type="l", xlab="", ylab="Energy sub metering")
lines(dat$datetime,dat$V8,col="red")
lines(dat$datetime,dat$V9,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1))
# plot 3
plot(dat$datetime, dat$V5, type="l", xlab="datetime", ylab="Voltage")
# plot 4
plot(dat$datetime, dat$V4, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
