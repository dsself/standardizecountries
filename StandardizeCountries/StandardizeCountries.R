setwd("C:/Users/darin/Documents/StandardCountries")
ccodes <- read_csv("StandardizeCountries/CountryCodes.csv")
cnames <- read_csv("StandardizeCountries/CountryNames.csv")

country_code <- function(x) {
  ccodes[match(x,ccodes$country),]$id
}

country_name <- function(x) {
  cnames[match(x,cnames$country),]$standardize
}

setwd("R")
devtools::use_data(cnames, ccodes, internal = TRUE)

