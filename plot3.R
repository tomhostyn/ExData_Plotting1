
source ("hpcPlot.R", chdir=TRUE)  # loads data set, defines saveplot function

plot3 <- function () {
  with (HPC, 
        plot (Sub_metering_1, type = "l", col="black",xaxt = "n",
              xlab="", ylab = "Energy sub metering"))  
  with (HPC, 
        lines (Sub_metering_2, type = "l", col="red",xaxt = "n",
              xlab="", ylab = ""))  
  with (HPC, 
        lines (Sub_metering_3, type = "l", col="blue",xaxt = "n",
              xlab="", ylab = ""))  
  axis (1, c(0, length (HPC$Global_active_power)/2, length (HPC$Global_active_power)), c("Thu", "Fri", "Sat")) 
  
  legend ("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
          col = c("black", "red", "blue"), lty = 1, cex=.75)
}

if (!exists ("no_plot") || (exists ("no_plot") && !no_plot )){
  saveplot (plot3)
}
