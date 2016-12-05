## Code for creating plot 3 for the Exploratory Data Analysis project 1
## David Lazaroff

## Data is already loaded in df as shown in plot1.R

with(df, plot(dateTime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = ""))
lines(df$dateTime, df$Sub_metering_1)
lines(df$dateTime, df$Sub_metering_2, col = "red")
lines(df$dateTime, df$Sub_metering_3, col = "blue")
legend("topright", 
       lty = 1,
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       seg.len = 4)
dev.copy(png, "plot3.png")
dev.off()
