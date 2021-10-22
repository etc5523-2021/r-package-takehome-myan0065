
<!-- README.md is generated from README.Rmd. Please edit that file -->

# YmyColour

<!-- badges: start -->
<!-- badges: end -->

The goal of YmyColour package is to apply colour palettes to both
discrete and continuous scale in ggplot2. This package allows users to
apply the colour palette inside this package to both discrete and
continuous scale in ggplot2. It contains one colour palette and there
are **six** colours inside this palette, they are named as “Orange”,
“Blue”, “Green”, “Coral”, “Rust” and “Yellow”. Ggplot2 is required for
using this package.

For discrete scale, you can specify the number of colours to be used and
the order of the colour to be applied. For continuous scale, one colour
can be selected from the palette to generate a gradient colour palette.
Other arguments can be used in this scale are setting the order of the
colours and the amount of the lightening you wish to apply.

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
df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])

# To colour discrete aesthetics
ggplot(df, aes(x = x, y = y, colour = type)) +
  geom_point(size = 10) +
  theme_bw() +
  scale_colour_ymy_d()

# To fill discrete aesthetics
ggplot(df, aes(x = x, y = y, fill = type)) +
  geom_bar(stat = 'identity') +
  theme_bw() +
  scale_fill_ymy_d()

# To colour continuous aesthetics
ggplot(df, aes(x = x, y = y,colour = y)) +
  geom_point(size = 10) +
  theme_bw() +
  scale_colour_ymy_seq_c(name = "Coral", amount = 0.6)
```
