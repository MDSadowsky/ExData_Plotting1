##  Reads in our comma delimited data.
data <- read.csv( file="feb_data.txt", sep=",", header=TRUE)

##  Converts dates.
daytime <- strptime(data$dates, "%Y-%m-%d %H:%M:%S")

##  Grabs the Global_active_power field too while we're at it.
global <- data$Global_active_power

##  Writes the plot to a PNG.
png("plot2.png", width = 480, height=480, type="window")

##  Creates the line plot for the two fields.
plot(daytime,global,type="l", xlab="", ylab="Global Active Power (kilowatts)")

##  Cleanup
rm(data)
rm(daytime)
rm(global)
dev.off()