
source ("hpcPlot.R", chdir=TRUE)  # loads data set, defines saveplot function

no_plot <- TRUE
source ("plot2.R", chdir=TRUE)
source ("plot3.R", chdir=TRUE)
no_plot <- FALSE


plot4b <- function () {
  with (HPC, 
        plot (Voltage, type = "l", col="black",xaxt = "n",
              xlab="datetime", ylab = "Voltage")
  )  
  axis (1, c(0, length (HPC$Global_active_power)/2, length (HPC$Global_active_power)), c("Thu", "Fri", "Sat"))
}

plot4d <- function () {
  with (HPC, 
        plot (Global_reactive_power, type = "l", col="black",xaxt = "n",
              xlab="datetime", ylab = "Global_reactive_power")
  )  
  axis (1, c(0, length (HPC$Global_active_power)/2, length (HPC$Global_active_power)), c("Thu", "Fri", "Sat"))
  
}

plot4 <- function () {
  par(mfrow=c(2,2))
  plot2()
  plot4b()
  plot3()
  plot4d()
}

if (!exists ("no_plot") || (exists ("no_plot") && !no_plot )){
  saveplot (plot4)
}