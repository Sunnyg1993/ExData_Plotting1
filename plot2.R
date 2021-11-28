#load raw data
x <- read.table("./Chapter4_explore_data/ExData_Plotting1-master/household_power_consumption.txt",
                header = T, sep = ";")
x1 <- subset(x,Date == "1/2/2007")
x2 <- subset(x,Date == "2/2/2007")
rm(x)

y <- rbind(x1,x2)

#plot2
png(filename = "plot2.png")
plot(y$Global_active_power, type = "l", xaxt='n', 
     xlab = "", ylab = "Global Active Power (kilowatts)")
Axis(at= c(0,nrow(y)/2,nrow(y)), side = 1,labels = c("Thu", "Fri", "Sat"))
dev.off()