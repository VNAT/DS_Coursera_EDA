setwd ("D:/Learning")

df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", 
               stringsAsFactors=FALSE,na.strings="?") ## reads data

dataplott <- subset(df,df$Date=="1/2/2007"|df$Date=="2/2/2007") 

#str(dataplott)
datetime <- strptime(paste(dataplott$Date, dataplott$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataplott$Global_active_power)
subMetering1 <- as.numeric(dataplott$Sub_metering_1)
subMetering2 <- as.numeric(dataplott$Sub_metering_2)
subMetering3 <- as.numeric(dataplott$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()