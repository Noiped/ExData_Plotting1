x = read.table("consumption.txt", header = TRUE, sep=";")
x1 = x[x$Date=="1/2/2007" |x$Date=="2/2/2007", ]
A = strptime(paste(x1$Date,x1$Time), format = "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png",bg = "transparent")
plot(A,as.numeric(as.character(x1$Sub_metering_1)),type = "l", xlab = "", ylab = "Energy sub metering",bg = "transparent")
lines(A,as.numeric(as.character(x1$Sub_metering_2)), col = "red")
lines(A,as.numeric(as.character(x1$Sub_metering_3)), col = "blue")
legend(A[1925], 39.5, c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col =c("black","red","blue"),cex=0.75,border ="")
dev.off()