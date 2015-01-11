library (dplyr)
library(data.table)


saveplot <- function (plot_f){
  filename <- paste (as.character(substitute(plot_f)), ".png", sep="")
  png(file=filename, width=480,height=480)
  plot_f()  
  dev.off()
}

readHPC <- function () {
  HPC <<- 
    data.table (read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", as.is=TRUE))
  
  HPC <<- HPC %>% 
    rename (date_txt = Date) %>%
    mutate (Date = as.Date(date_txt,"%d/%m/%Y")) %>%
    filter (Date >="2007-02-01") %>%
    filter ("2007-02-02" >= Date)   
}

if (!exists ("HPC")){readHPC()}


