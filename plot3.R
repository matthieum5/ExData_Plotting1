setwd("~/Documents/Coursera/Exploratory Data Analysis/Course Project #1")
df <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE, 
               stringsAsFactors = FALSE, na.strings = "?")
pd <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
pd$Date <- paste(pd$Date, pd$Time, sep = " ")
pd$Date <- strptime(pd$Date, format = "%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(pd$Date, pd$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering")
lines(pd$Date, pd$Sub_metering_2, type = "l", col = "red", xlab = "", 
     ylab = "Energy sub metering")
lines(pd$Date, pd$Sub_metering_3, type = "l", col = "blue", xlab = "", 
      ylab = "Energy sub metering")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = "solid", col = c("black", "red","blue"))
dev.off()

