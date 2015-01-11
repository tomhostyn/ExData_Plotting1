
source ("hpcPlot.R", chdir=TRUE)  # loads data set, defines saveplot function

plot2 <- function (){
  with (HPC, 
        plot (Global_active_power, type = "l", col="black",xaxt = "n",
              xlab="", ylab = "Global Active Power (kilowatts)")
             )  
  axis (1, c(1, length (HPC$Global_active_power)/2, length (HPC$Global_active_power)), 
        c("Thu", "Fri", "Sat"))
}

if (!exists ("no_plot") || (exists ("no_plot") && !no_plot )){
  saveplot (plot2)
}