#the file containing the data is assumed to be unzipped and located in ~/EDA/P1
p <- read.csv("~/EDA/P1/household_power_consumption.txt", header=T, sep=";",stringsAsFactors=F)
p$Date <- as.Date(p$Date, "%d/%m/%Y")
twoDays <- p[p$Date=="2007-02-01" | p$Date==" 2007-02-02",]
rm(p)   #remove p to free up memory, it is no longer needed.

t <- paste(twoDays$Date, twoDays$Time)
times <- strptime(t, "%Y-%m-%d %H:%M:%S")
sm1<-as.numeric(twoDays$Sub_metering_1)
sm2 <- as.numeric(twoDays$Sub_metering_2)
sm3 <-as.numeric(twoDays$Sub_metering_3)
png(file="plot3.png")   
plot(times,sm1, type="l", xlab="", ylab="Energy sub metering")
lines(times, sm2, col="red")
lines(times, sm3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1,lwd=1,col=c("black","red","blue"), ncol=1, bty="1", inset =c(0,0),
       text.col=c("black"))
dev.off()

