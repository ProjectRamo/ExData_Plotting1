
# read in the text file
hpc = read.table("household_power_consumption.txt", header = TRUE, sep=";", stringsAsFactors = FALSE)
head(hpc) # looks right

# ===================================================
# Subset the dates from 2007-02-01 to 2007-02-02
# ====================================================
## convert the dates we will need
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
head(hpc$Date) # looks right
begdate = as.Date("2007-02-01")
enddate = as.Date("2007-02-02")
## should read it into hpc to use less space
## but reading it into hpcss (subset) for ease of debugging
hpcss = hpc[hpc$Date == begdate:enddate,]
## or subset(hpc,hpc$Date == begdate:enddate)
## strange warning so lets check
head(hpcss) # beginnging date and time is correct
tail(hpcss) # last date and time is correct
## convert the numeric field we will need
hpcss$Global_active_power <- as.numeric(hpcss$Global_active_power)
hpcgap <- hpcss$Global_active_power
summary(hpcgap) # seems right
summary(weekdays(hpcss$Date)) # seems right

# =======================================
# reset and prepare graphs after testing
# =======================================
par(mfrow=c(1,1))
# 480 x 480 is default and examining the PNG you can see that the 10th (height) and 
# 12th (width) bytes are
# 01e0 which is hexadecimal for 480


# plot 3

with(hpcss, plot(Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", xaxt="n"))
with(hpcss, lines(Sub_metering_2, type="l", col="red"))
with(hpcss, lines(Sub_metering_3, type="l", col="blue"))
axis(1, at=c(0, 360*2, 360*4), labels=c("Thu", "Fri", "Sat"), las=2)
## note have to use cex because legend was not visible in the 480 x 480 PNG
legend("topright", lty = 1, col=c("black", "blue", "red"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.75)
dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off()

