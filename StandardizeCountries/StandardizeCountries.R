setwd("C:/Users/selfd/Documents/standardizecountries")
library(tidyverse)
library(devtools)
ccodes <- read_csv("StandardizeCountries/CountryCodes.csv")
cnames <- read_csv("StandardizeCountries/CountryNames.csv") %>%
  mutate(country = iconv(country, 'UTF-8', 'ASCII')) %>% 
  mutate(country = tolower(country)) %>%
  unique(.)

d1 <- read_csv("StandardizeCountries/CountryNames.csv") %>%
  mutate(country = iconv(country, 'UTF-8', 'ASCII')) %>% 
  mutate(country = tolower(country)) %>%
  unique(.)

d2 <- plyr::ddply(d1, c("country"), function(DF) {
 DF <- merge(data.frame(year=1900:2023), DF[,1:2], all.x=TRUE)
 DF
})

write_csv(d2, "StandardizeCountries/CountryPanel.csv")

d3 <- d2 %>%
  mutate(standardize = ifelse(standardize == "Vietnam, Democratic Republic of" & year > 1975, "Vietnam", standardize)) %>%
  mutate(standardize = ifelse(standardize == "Yemen (Arab Republic of Yemen)" & year > 1989, "Yemen, Republic of", standardize)) %>%
  mutate(standardize = ifelse(standardize == "Czech Republic" & year > 1917 & standardize == "Czech Republic" & year < 1993, "Czechoslovakia", standardize)) 


cpanel <- unite(d3, merged, country, year, sep = ".") 

setwd("R")
use_data(cnames, ccodes, cpanel, internal = TRUE, overwrite = TRUE)

