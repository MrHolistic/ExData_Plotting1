## Code for creating plot 2 for the Exploratory Data Analysis project 1
## David Lazaroff

## Data is already loaded in df as shown in plot1.R

with(df, plot(dateTime, Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = ""))
lines(df$dateTime, df$Global_active_power)
dev.copy(png, "plot2.png")
dev.off()
