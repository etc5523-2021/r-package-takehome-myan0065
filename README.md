
<!-- README.md is generated from README.Rmd. Please edit that file -->

# YmyColour

<!-- badges: start -->
<!-- badges: end -->

The goal of YmyColour package is to apply colour palettes to both
discrete and continuous scale in ggplot2.

## Installation

You can install the development version of YmyColour from GitHub with:

``` r
remotes::install_github("etc5523-2021/r-package-takehome-myan0065")
```

## Example

This is a basic example which shows you how to solve a common problem
using this package:

``` r
library(YmyColour)
library(ggplot2)
## basic example code
ggplot(data = penguins, 
       aes(x = body_mass_g)) +
  geom_histogram(aes(fill = species),
                 alpha = 0.7,
                 position = "identity") +
  scale_fill_ymy_d() +
  theme_bw() +
  labs(x = "Body mass (g)",
       y = "Frequency",
       title = "Penguin body mass")
```
