
dat <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
#cnames <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#names(dat) <- cnames
dat$datetime <- strptime(paste(dat$V1, dat$V2), format="%d/%m/%Y %H:%M:%S", tz="GMT")
plot(dat$datetime, dat$V3, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()