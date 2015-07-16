# standardizecountries
Social scientists that work with cross sections of countries typically work with many different datasets and each dataset seems to vary names of countries. The list of possible country names was drawn from a Stata .do file complied by [Rich Nielsen](http://web.mit.edu/polisci/people/faculty/rich-nielsen.html) around 2008 and I have since updated the list with variations of country names that I have found. 

This package will allow users to standardize country names and then correlate direclty to [Correlates of War](http://www.correlatesofwar.org/) IDs. 

Users may wonder why I created this package in addition to the  [countrycode](http://cran.r-project.org/web/packages/countrycode/index.html) package already on CRAN. The main reason I built this is because `countrycode` is limited, I believe, in the variation of country names that it captures which leads to the user having to either manually renaming countries to fit the package or having to assign country codes. 

To use standarize country names using `country_name(x)` and then create the or overwrite a vector for the Correlates of War IDs using `country_code(x)`.

If you are using panel (longitudinal, time-series cross-sectional) data and want to account for splits or mergers of countries (e.g. Czechoslovakia or Vietnam) use `country_panel(x,y)` where `x` is the country name to be standardized and `y` is the year variable. 

Because this works with a list of known variations instead of regex (what `countrycode` package uses) please help me identify potential variants of country names or country mergers/splits so I can add them.

To install
```
devtools::install_github("dsself/standardizecountries")
library(standard)
```
