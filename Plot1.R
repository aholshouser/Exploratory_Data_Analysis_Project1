
##reading and subset the data
pwr<-read.table('./exdata_data_household_power_consumption/household_power_consumption.txt',
                header=TRUE, sep=";", na.strings="?")
pwr<-subset(pwr, pwr$Date=="1/2/2007"| pwr$Date=="2/2/2007")

##Plot 1
hist(pwr$Global_active_power, col="red",
     xlab="Global Active Power (killowatts)", main="Global Active Power")

##copy plot into PNG file w=480 and h=480
dev.copy(png, file="Plot1.png", width=480, height=480)
dev.off()

