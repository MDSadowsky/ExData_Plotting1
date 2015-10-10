##  Reads in our comma delimited data.
data <- read.csv( file="feb_data.txt", sep=",", header=TRUE)

##  Writes the plot to a PNG.
png("plot1.png", width = 480, height=480, type="window")

##  Creates the histogram.
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

##  Cleanup
rm(data)
dev.off()
