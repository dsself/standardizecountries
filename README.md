# StandardCountries
Social scientists that work with cross sections of countries typically work with many different datasets and each dataset seems to vary names of countries. The list of possible country names was drawn from a Stata .do file complied by [Rich Nielsen](http://web.mit.edu/polisci/people/faculty/rich-nielsen.html) around 2010 and I have since updated the list with variations of country names that I have found. 

This package will allow users to standardize country names and then correlate direclty to [Correlates of War](http://www.correlatesofwar.org/) IDs. 

Users may wonder why I created this package in addition to the  [countrycode](http://cran.r-project.org/web/packages/countrycode/index.html) package already on CRAN. The main reason I built this is because `countrycode` is limited, I believe, in the variation of country names that it captures which leads to the user having to either manually renaming countries to fit the package or having to assign country codes. 

To install
```

install_github("dsself/StandardCountries")
```
