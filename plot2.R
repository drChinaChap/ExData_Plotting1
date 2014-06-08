power <- read.csv("~/EDA/P1/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
power$Date <- as.Date(power$Date, "%d/%m/%Y")
twoDays <- power[power$Date=="2007-02-01" | power$Date==" 2007-02-02",]
x <- as.numeric(twoDays$Global_active_power)
t <- paste(twoDays$Date, twoDays$Time)
times <- strptime(t, "%Y-%m-%d %H:%M:%S")
png(file="plot2.png")   
plot(times, x, xlab="", ylab="Global Active Power (kilowatts)", type="l")
dev.off()

