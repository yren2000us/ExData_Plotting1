## download data from UCI 
setwd("C:/Users/21722/Desktop/Coursera/Exploratory-Data-Analysis/Project 1")
if(!file.exists('raw_data')) dir.create('raw_data')
fileUrl <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(fileUrl, destfile = './raw_data/household_power_consumption.zip')
## unzip and read data
unzip('./raw_data/household_power_consumption.zip', exdir = './raw_data')
files <- file('./raw_data/household_power_consumption.txt')
data <- read.table(text = grep("^[1,2]/2/2007",readLines(files),value=TRUE), sep = ';', 
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                   "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
