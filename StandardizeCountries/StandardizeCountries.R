setwd("C:/Users/darin/Documents/standardizecountries")
library(readr)
library(devtools)
ccodes <- read_csv("StandardizeCountries/CountryCodes.csv")
cnames <- read_csv("StandardizeCountries/CountryNames.csv")


setwd("R")
use_data(cnames, ccodes, internal = TRUE, overwrite = TRUE)

