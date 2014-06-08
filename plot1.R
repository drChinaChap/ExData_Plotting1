#the file containing the data is assumed to be unzipped and located in ~/EDA/P1
p <- read.csv("~/EDA/P1/household_power_consumption.txt", header=T, sep=";",stringsAsFactors=F)
p$Date <- as.Date(p$Date, "%d/%m/%Y")
twoDays <- p[p$Date=="2007-02-01" | p$Date==" 2007-02-02",]
rm(p)   #remove p to free up memory, it is no longer needed.

gap <- as.numeric(twoDays$Global_active_power)

# width = 480, height = 480 are the default values for png.
png(file="plot1.png")   
hist(gap,xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()

