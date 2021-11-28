#load raw data
x <- read.table("./Chapter4_explore_data/ExData_Plotting1-master/household_power_consumption.txt",
                header = T, sep = ";")
x1 <- subset(x,Date == "1/2/2007")
x2 <- subset(x,Date == "2/2/2007")
rm(x)

y <- rbind(x1,x2)

#plot4
png(filename = "plot4.png")

par(mfrow = c(2,2))

#1. top_left
plot(y$Global_active_power, type = "l", xaxt='n', 
     xlab = "", ylab = "Global Active Power")
Axis(at= c(0,nrow(y)/2,nrow(y)), side = 1,labels = c("Thu", "Fri", "Sat"))

#2. top_right
plot(y$Voltage, type = "l", xaxt='n', 
     xlab = "datetime", ylab = "Voltage")
Axis(at= c(0,nrow(y)/2,nrow(y)), side = 1,labels = c("Thu", "Fri", "Sat"))

#3. bottom_left

plot(y$Sub_metering_1, type = "n", ylab = "Energy Sub metering",
     xaxt='n', xlab = "")
lines(y$Sub_metering_1, col="black")
lines(y$Sub_metering_2, col="red")
lines(y$Sub_metering_3, col="blue")
Axis(at= c(0,nrow(y)/2,nrow(y)), side = 1,labels = c("Thu", "Fri", "Sat"))
legend("topright", lwd = c(1,1,1),col=c("black","blue","red"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       cex=0.8)

#4. bottom_right
plot(y$Global_reactive_power, type = "l", xaxt='n', 
     xlab = "datetime", ylab = "Global_reactive_power")
Axis(at= c(0,nrow(y)/2,nrow(y)), side = 1,labels = c("Thu", "Fri", "Sat"))
dev.off()