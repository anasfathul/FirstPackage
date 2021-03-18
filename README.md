
# FirstPackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/anasmuhd/FirstPackage/workflows/R-CMD-check/badge.svg)](https://github.com/anasmuhd/FirstPackage/actions)
<!-- badges: end -->

The goal of FirstPackage is to ...

## Installation

You can install the Demo package using the following line below:


``` r
#library(devtools)
devtools::install_github("anasmuhd/FirstPackage", build_vignette = TRUE, build_opts = c())
library(FirstPackage)
```

## Use

This package contain vignette that will elaborate the usage of all functions.
You can view the vignette by using the following code:

``` r
# Use this to view the vignette in the Demo HTML help
help(package = "FirstPackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "FirstPackage")
```

