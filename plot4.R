##  Reads in our comma delimited data.
data <- read.csv( file="feb_data.txt", sep=",", header=TRUE)

##  Converts dates.
daytime <- strptime(data$dates, "%Y-%m-%d %H:%M:%S")


##  Writes to a PNG file.
png("plot4.png", width = 480, height=480, type="window")

##  Sets up 2x2 plots.
par(mfrow=c(2,2))


##  Plot #1
plot(daytime, data$Global_active_power,type="l", xlab="", ylab="Global Active Power (kilowatts)")

##  Plot #2
plot(daytime, data$Voltage,type="l", xlab="datetime", ylab="Voltage")

##  Plot #3
plot(daytime,data$Sub_metering_1, type="n", xlab = "", ylab="Energy sub metering")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","red","blue"))
points( daytime, data$Sub_metering_1, type="l", col="black")
points( daytime, data$Sub_metering_2, type="l", col="red")
points( daytime, data$Sub_metering_3, type="l", col="blue")

##  Plot #4
plot(daytime, data$Global_reactive_power,type="l", xlab="datetime", ylab="Global_reactive_power")

##  Cleanup
rm(daytime)
rm(data)
dev.off()