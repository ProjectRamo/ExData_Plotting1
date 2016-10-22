## Introduction

This is for Coursera's Exploratory Data Analysis which uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, in particular the "Individual household
electric power consumption Data Set".


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data


* The data loaded into the memory fine.

* We will only be using data from the dates 2007-02-01 and
2007-02-02. Rather than load just these dates, I subset the data.
In addition, I didn't overwrite the variable for ease of debugging.
If memory is an issue the same variable can be over-written.

* $Date was converted using as.Date with "%d/%m/%Y"
This was done in order to subset the data.


## Making Plots

The plots are shown below with a brief discussion.

* The default PNG file size is a width of 480
pixels and a height of 480 pixels on R on Windows so this was easy.

* However, the legend didn't look the same on the file and had to be
modified.

* See plot1-4.R files for the code. The code to read the data is identical.



The four plots I produced are below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/plot1.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/plot2.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/plot3.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/plot4.png) 

