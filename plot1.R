x = read.table("consumption.txt", header = TRUE, sep=";")
x1 = x[x$Date=="1/2/2007" |x$Date=="2/2/2007", ]
A = strptime(paste(x1$Date,x1$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot1.png",bg = "transparent")
hist(as.numeric(as.character(x1$Global_active_power)),col = "red",xlab = "Global Active Power (killowats)",main = "Global Active Power",bg = "transparent")
dev.off()

