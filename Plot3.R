
##reading and subset the data
pwr<-read.table('./exdata_data_household_power_consumption/household_power_consumption.txt',
                header=TRUE, sep=";", na.strings="?")
pwr<-subset(pwr, pwr$Date=="1/2/2007"| pwr$Date=="2/2/2007")

##Convert data types
pwr$DT<-strptime(paste(pwr$Date,pwr$Time), "%d/%m/%Y %H:%M:%S")

##Plot 3
plot(x=pwr$DT,y=pwr$Sub_metering_1, type = "l",
     xlab="",ylab="Energy Submetering")
lines(x=pwr$DT,y=pwr$Sub_metering_2, type = "l", col="red")
lines(x=pwr$DT,y=pwr$Sub_metering_3, type = "l", col="blue")

#Legend
legend("topright", c("Submetering_1","Submetering_2","Submetering_3"),
       col=c("black","red","blue"), lty=1)

##copy plot into PNG file w=480 and h=480
dev.copy(png, file="Plot3.png", width=480, height=480)
dev.off()
