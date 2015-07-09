setwd("paneldev")
library(readr)
library(dplyr)
library(devtools)

cnames <- read_csv("TestPanel.csv") %>%
  mutate(time = as.numeric(time))

country_panel <- function(x, y) {
  ifelse(cnames$time < y, 
         cnames[match(x, cnames$country),]$standardize,
         cnames[match(x, cnames$country),]$panel
  )
}

d1 <- read_csv("TestData.csv") %>%
  select(countryname, year) %>%
  mutate(year = as.numeric(year)) %>%
  mutate(test = country_panel(countryname, year)) %>%
  filter(grepl("Viet", countryname) | grepl("Yemen", countryname)) 




