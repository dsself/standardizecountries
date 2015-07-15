setwd("C:/Users/darin/Documents/standardizecountries")
library(hadleyverse)
library(devtools)
ccodes <- read_csv("StandardizeCountries/CountryCodes.csv")
cnames <- read_csv("StandardizeCountries/CountryNames.csv")

d1 <- read_csv("StandardizeCountries/CountryNames.csv")

d2 <- ddply(d1, c("country"), function(DF) {
 DF <- merge(data.frame(year=1900:2014), DF[,1:2], all.x=TRUE)
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

