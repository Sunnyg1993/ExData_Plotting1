#load raw data
x <- read.table("./Chapter4_explore_data/ExData_Plotting1-master/household_power_consumption.txt",
                header = T, sep = ";")
x1 <- subset(x,Date == "1/2/2007")
x2 <- subset(x,Date == "2/2/2007")
rm(x)

y <- rbind(x1,x2)

#plot1
png(filename = "plot1.png")
hist(as.numeric(y$Global_active_power), main = "Global Active Power",
     col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()




