
dat <- read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880)
class(dat$V1) <- as.Date(dat$V1)
dat$V2 <- strptime(dat$V2, "%H:%M:%S", tz="")
cnames <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
names(dat) <- cnames
hist(dat$Global_active_power,freq=TRUE,col = "red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png")
dev.off()