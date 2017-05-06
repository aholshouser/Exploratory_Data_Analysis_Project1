
##reading and subset the data
pwr<-read.table('./exdata_data_household_power_consumption/household_power_consumption.txt',
                header=TRUE, sep=";", na.strings="?")
pwr<-subset(pwr, pwr$Date=="1/2/2007"| pwr$Date=="2/2/2007")

##Convert data types
pwr$DT<-strptime(paste(pwr$Date,pwr$Time), "%d/%m/%Y %H:%M:%S")

##Plot 2
plot(x=pwr$DT,y=pwr$Global_active_power, type = "l",
     xlab="",ylab="Global Active Power (killowatts)")

##copy plot into PNG file w=480 and h=480
dev.copy(png, file="Plot2.png", width=480, height=480)
dev.off()
