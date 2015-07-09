setwd("C:/Users/darin/Documents/StandardCountries")
library(readr)
library(dplyr)
library(devtools)



cnames <- read_csv("StandardizeCountries/TestPanel.csv")

country_panel <- function(x, y) {
 if(y < cnames$min) {
   return(cnames[match(x,cnames$country),]$panel)
 }else{
   return(cnames[match(x,cnames$country),]$standardize)
   
 }
}

d1 <- read_csv("C:/Users/darin/Documents/V-dem/OLG/WDI/WDI Educ Dataset.csv") %>%
  select(countryname, year) %>%
  filter(grepl("Viet", countryname) | grepl("Yemen", countryname)) %>%
  mutate(test = country_panel(countryname, year))
