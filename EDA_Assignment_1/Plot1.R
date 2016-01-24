setwd ("D:/Learning")

df<-read.table("household_power_consumption.txt", header = T, sep=";", comment.char="%", 
               stringsAsFactors=FALSE,na.strings="?") ## reads data

dataplott <- subset(df,df$Date=="1/2/2007"|electricity$Date=="2/2/2007") 

png(file = 'plot1.png', width = 480, height = 480 )
with(dataplott,hist(as.numeric(Global_active_power), main = 'Global Active Power',xlab = 'Global Active Power (kilowatts)', col = 'red'))
dev.off()
