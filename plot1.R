power <- read.csv("~/EDA/P1/household_power_consumption.txt", header=TRUE, sep=";",stringsAsFactors=FALSE)
power$Date <- as.Date(power$Date, "%d/%m/%Y")
twoDays <- power[power$Date=="2007-02-01" | power$Date==" 2007-02-02",]
x <- as.numeric(twoDays$Global_active_power)
png(file="plot1.png")   
hist(x,xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()

