% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/country.R
\name{country_panel}
\alias{country_panel}
\title{country_panel}
\usage{
country_panel(country, time)
}
\arguments{
\item{x}{A Vector of Un-standardized Country Names}

\item{y}{A Vector of Numeric Years}
}
\description{
country_panel
}
\examples{
country_panel("Vietnam, Democratic Republic of", 1970) #returns "Vietnam, Democratic Republic of"
country_panel("Vietnam, Democratic Republic of", 1977) #returns "Vietnam"
}

