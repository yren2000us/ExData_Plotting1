# Plot 1
png(filename = './plot1.png', width = 480, height = 480, units='px')
with(data, hist(Global_active_power, xlab = 'Global Active Power (kilowatt)', main = 'Global Active Power', col = 'red'))
dev.off() ## Closing device