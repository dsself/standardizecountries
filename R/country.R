#' country_name
#'
#' @param x
#'
#' @return A Vector of Country Names
#' @export
#'
#' @examples
#' country_name("Canada") #returns "Canada"
country_name <- function(x) {
  return(cnames[match(x,cnames$country),]$standardize)
}

#' country_panel
#'
#' @param x
#'
#' @return A Vector of Un-standardized Country Names
#' 
#' @param Y
#' 
#' @return A Vector of Numeric Years
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
#' @param x
#'
#' @return A Vector of Standardized Country Names
#' @export
#'
#' @examples
#' country_code("Canada") #returns 20
#' country_code(c("Canada","Bahrain")) #returns c(20, 692)
country_code <- function(x) {
  return(ccodes[match(x,ccodes$country),]$id)
}