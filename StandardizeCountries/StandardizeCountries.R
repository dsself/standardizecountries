setwd("C:/Users/darin/Documents/standardizecountries")
library(hadleyverse)
library(devtools)
ccodes <- read_csv("StandardizeCountries/CountryCodes.csv")
cnames <- read_csv("StandardizeCountries/CountryNames.csv")

#d1 <- read_csv("StandardizeCountries/CountryNames.csv")

#d2 <- ddply(d1, c("country"), function(DF) {
 # DF <- merge(data.frame(year=1900:2014), DF[,1:2], all.x=TRUE)
  #DF
#})

cpanel <- unite(d2, merged, country, year, sep = ".") 

setwd("R")
use_data(cnames, ccodes, internal = TRUE, overwrite = TRUE)

