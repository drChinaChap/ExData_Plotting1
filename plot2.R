#the file containing the data is assumed to be unzipped and located in ~/EDA/P1
p <- read.csv("~/EDA/P1/household_power_consumption.txt", header=T, sep=";",stringsAsFactors=F)
p$Date <- as.Date(p$Date, "%d/%m/%Y")
twoDays <- p[p$Date=="2007-02-01" | p$Date==" 2007-02-02",]
rm(p)   #remove p to free up memory, it is no longer needed.

gap <- as.numeric(twoDays$Global_active_power)
t <- paste(twoDays$Date, twoDays$Time)
times <- strptime(t, "%Y-%m-%d %H:%M:%S")
png(file="plot2.png")   
plot(times, gap, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()

