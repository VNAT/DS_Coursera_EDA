setwd ("D:/Learning")

df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", 
               stringsAsFactors=FALSE,na.strings="?") ## reads data

dataplott <- subset(df,df$Date=="1/2/2007"|df$Date=="2/2/2007") 

#dataplott
datetime <- strptime(paste(dataplott$Date, dataplott$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataplott$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()