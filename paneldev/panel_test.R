#setwd("paneldev")
#library(readr)
#library(dplyr)
#library(devtools)

cnames <- read_csv("TestPanel.csv") 


country_panel <- function(x, y) {
  
       cnames[match(x, cnames$country),]$panel
  ifelse(x == "Vietnam, Democratic Republic of" & y > 1975, "Vietnam", ifelse(x == "Yemen (Arab Republic of Yemen)" & y > 1989, "Yemen, Republic of", x))

  }

d1 <- read_csv("TestData.csv") %>%
  select(countryname, year) %>%
  mutate(test = country_panel(countryname, year)) %>%
  filter(grepl("Vietn", countryname) | grepl("Yemen", countryname))





