#' country_name
#'
#' @param x A Vector of Country Names
#' @export
#'
#' @examples
#' country_name("Canada") #returns "Canada"
country_name <- function(x) {
  return(cnames[match(x,cnames$country),]$standardize)
}

#' country_panel
#'
#' @param x A Vector of Un-standardized Country Names
#' 
#' @param y A Vector of Numeric Years
#' @export
#'
#' @examples
#' country_panel("Vietnam, Democratic Republic of", 1970) #returns "Vietnam, Democratic Republic of"
#' country_panel("Vietnam, Democratic Republic of", 1977) #returns "Vietnam"
country_panel <- function(x, y) {
  
  z <- paste(x, y, sep = ".")
  cpanel[match(z, cpanel$merged),]$standardize
  
}

#' country_code
#'
#' @param x  A vector that contains codes or country names 
#' @param y  Coding type of x (Enclose in quotes "")
#' @param z  Coding type returned from x (Enclose in quotes "")
#' 
#' @note As with the package countrycode the following types are supported: Correlates of War character,
#'   CoW-numeric, ISO3-character, ISO3-numeric, ISO2-character, IMF numeric, International
#'   Olympic Committee, FIPS 10-4, FAO numeric, United Nations numeric,
#'   World Bank character, standardized country names converted by function \code{country_name}.
#'
#'   The following strings are available respective to the types supported \code{y} or
#'   \code{z}: "cowc", "cown", "iso3c", "iso3n", "iso2c", "imf",
#'   "fips104", "fao", "ioc", "un", "wb", "country".  
#'   
#' @export
#'
#' @examples
#' country_code("Canada", "country", "cown") #returns 20
#' country_code("Canada", "country", "cowc") #returns "CAN"
country_code <- function(x, y, z) {
  
  return(ccodes[match(x, ccodes[[y]]),][[z]])
  
}