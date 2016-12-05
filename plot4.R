## Code for creating plot 4 for the Exploratory Data Analysis project 1
## David Lazaroff

## Data is already loaded in df as shown in plot1.R

## Set to plot 4 graphs in 2 rows and 2 columns
par(mfrow = c(2,2))

## Plot Global Active Power over time
with(df, {
    plot(dateTime, 
              Global_active_power, 
              type = "n", 
              ylab = "Global Active Power (kilowatts)", 
              xlab = "")
    lines(dateTime, Global_active_power)
    })

## Plot voltage over time
with(df, {
    plot(dateTime,
         Voltage,
         type = "n"
         )
    lines(dateTime, Voltage)
})

## Plot Sub Metering power over time
with(df, 
    plot(dateTime, 
         Sub_metering_1, 
         type = "n", 
         ylab = "Energy sub metering", 
         xlab = "")
)
lines(df$dateTime, df$Sub_metering_1)
lines(df$dateTime, df$Sub_metering_2, col = "red")
lines(df$dateTime, df$Sub_metering_3, col = "blue")
legend("topright", 
       bty = "n",
       lty = 1,
       col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       seg.len = 2)

## Plot Global Reactive Power over time
with(df, {
    plot(dateTime,
         Global_reactive_power,
         type = "n"
         )
    lines(dateTime, Global_reactive_power)
})

dev.copy(png, "plot4.png")
dev.off()
