## This code reads data for household power consumption and
## for 2007-02-01 and 2007-02-02 and produces a plot
## David Lazaroff

## Load the sqldf library
library(sqldf)
## Read the data for 
df <- read.csv2.sql("household_power_consumption.txt", 
                    sql = "select * from file where Date IN ('1/2/2007','2/2/2007')",
                 na.strings = "?")

## Create a string with the date and time
dateTime <- paste(df[, 1], df[,2])
## Convert this string to a time class
dateTime <- strptime(thistime, "%d/%m/%Y %H:%M:%S")

## Add dateTime as the first column of our data.
df <- cbind(dateTime, df)

with(df, hist(Global_active_power, col = "red", 
              main = "Global Active Power", 
              xlab = "Global Active Power (kilowatts)"))
## copy the plot to a png file
dev.copy(png, "plot1.png")
dev.off()