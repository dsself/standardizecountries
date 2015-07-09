countryname <- c("Viet Nam", "Viet Nam", "Viet Nam", "Viet Nam", "Viet Nam")
year <- c(1974, 1975, 1976, 1977,1978)

df <- data.frame(countryname, year, stringsAsFactors=FALSE)

country <- c("Vietnam, North", "Vietnam, N.", "Vietnam North", "Viet Nam", "Democratic Republic Of Vietnam")
standardize <- c("Vietnam, Democratic Republic of", "Vietnam, Democratic Republic of", "Vietnam, Democratic Republic of", "Vietnam, Democratic Republic of", "Vietnam, Democratic Republic of")
panel <- c("Vietnam", "Vietnam","Vietnam","Vietnam","Vietnam")
time <- c(1976,1976,1976,1976,1976)

cnames <- data.frame(country, standardize, panel, time, stringsAsFactors = FALSE)
    

country_name <- function(x) {
  return(cnames[match(x,cnames$country),]$standardize)
}

country_panel <- function(x, y) {
  ifelse(cnames$time < y, 
         cnames[match(x, cnames$country),]$standardize,
         cnames[match(x, cnames$country),]$panel
  )
}

d1 <- df %>% 
  mutate(new_name = country_panel(countryname, year))
 

