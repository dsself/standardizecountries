setwd("C:/Users/darin/Documents/StandardCountries")
library(readr)
library(dplyr)
library(devtools)



cnames <- read_csv("StandardizeCountries/TestPanel.csv")

t.d[!(t.d$V1>1 & t.d$V3<9), "V4"] <- 0

country_panel <- function(x, y) {

    cnames[(y < cnames$min)] <- cnames[match(x,cnames$country),]$panel
}


country_panel <- function(x, y) {
 if(y < cnames$min) {
   return(cnames[match(x,cnames$country),]$panel)
 }else{
   return(cnames[match(x,cnames$country),]$standardize)
   
 }
}

d1 <- read_csv("C:/Users/darin/Documents/V-dem/OLG/WDI/WDI Educ Dataset.csv") %>%
  select(countryname, year) %>%
  #filter(grepl("Viet", countryname) | grepl("Yemen", countryname)) %>%
  mutate(test = country_panel(countryname, year))
