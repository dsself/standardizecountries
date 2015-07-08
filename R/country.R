#' country_code
#'
#' @param x
#'
#' @return A Vector of Country Names
#' @export
#'
#' @examples
#' country_code("Canada") #returns 20
#' country_code(c("Canada","Bahrain")) #returns c(20, 692)
country_code <- function(x) {
  return(ccodes[match(x,ccodes$country),]$id)
}

#' country_name
#'
#' @param x
#'
#' @return A Vector of Standardized Country Names
#' @export
#'
#' @examples
#' country_name("Canada") #returns "Canada"
country_name <- function(x) {
  return(cnames[match(x,cnames$country),]$standardize)
}