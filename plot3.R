##  Reads in our comma delimited data.
data <- read.csv( file="feb_data.txt", sep=",", header=TRUE)

##  Converts dates.
daytime <- strptime(data$dates, "%Y-%m-%d %H:%M:%S")

png("plot3.png", width = 480, height=480, type="window")

plot(daytime,data$Sub_metering_1, type="n", xlab = "", ylab="Energy sub metering")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd=1, col=c("black","red","blue"))
points( daytime, data$Sub_metering_1, type="l", col="black")
points( daytime, data$Sub_metering_2, type="l", col="red")
points( daytime, data$Sub_metering_3, type="l", col="blue")

##  Cleanup
rm(daytime)
rm(data)
dev.off()