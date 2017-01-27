setwd("~/Documents/Coursera/Exploratory Data Analysis/Course Project #1")
df <- read.csv("household_power_consumption.txt", sep = ";", header = TRUE, 
               stringsAsFactors = FALSE, na.strings = "?")
pd <- df[df$Date %in% c("1/2/2007","2/2/2007"),]
pd$Date <- paste(pd$Date, pd$Time, sep = " ")
pd$Date <- strptime(pd$Date, format = "%d/%m/%Y %H:%M:%S")
png("plot2.png")
plot(pd$Date, pd$Global_active_power, type = "l", xlab = "", 
     ylab = "Global Active Power (kilowatts)")
dev.off()