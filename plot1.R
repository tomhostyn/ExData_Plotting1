
source ("hpcPlot.R", chdir=TRUE)  # loads data set, defines saveplot function

plot1 <- function () {
  with (HPC, 
        hist (Global_active_power, 
              col="red",
              main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency"))  
}

if (!exists ("no_plot") || (exists ("no_plot") && !no_plot )){
  saveplot (plot1)
}



