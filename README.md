
# FirstPackage

<!-- badges: start -->
[![R-CMD-check](https://github.com/anasmuhd/FirstPackage/workflows/R-CMD-check/badge.svg)](https://github.com/anasmuhd/FirstPackage/actions)
[![codecov](https://codecov.io/gh/anasmuhd/FirstPackage/branch/main/graph/badge.svg?token=QAQXCQGE0F)](https://codecov.io/gh/anasmuhd/FirstPackage)
<!-- badges: end -->

The FirstPackage is a package consist of statistical analysis function for the
course STAT302 in University of Washington. The functions are my_t.test, my_lm, my_knn_cv, and my_rf_cv.

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

