# This is where functions for your continous scale go

# check that name is in your palette

# throw an error if it isn't

# set the low colour

# set the high colour with colorspace pkg

# if direction is < 0 switch high and low

# pass everything on to ggplot2 color gradient

#' Continuous colour scale from YmyColour
#'
#' @param name character string, specifying the name of the colour to be used. Colours in YmyColour package include orange, blue, green, coral, yellow and rust.
#' @param direction Sets the order of colours in the scale. If 1, the default, colours are ordered as default order. If -1, the order of colours is reversed.
#' @param amount numeric specifying the amount of lightening. This is applied either multiplicatively or additively to the luminance value,
#' depending on the setting of method (either relative or absolute). Negative numbers cause darkening.
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}, \code{\link[ggplot2]{continuous_scale}},
#' or \code{\link[ggplot2]{binned_scale}} to control name, limits, breaks, labels and so forth.
#'
#' @import ggplot2
#' @import colorspace
#' @details The ymy scales were carefully designed and tested on continuous data.
#' @seealso Other colour scales: \code{\link[ggplot2]{scale_colour_brewer}}, \code{\link[ggplot2]{scale_colour_viridis_c}}
#' @export
#'
#' @examples
#' # Set the amount of lightening
#' library(ggplot2)
#' df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])
#' ggplot(df, aes(x = x, y = y,colour = y)) +
#' geom_point(size = 10) +
#' theme_bw() +
#' scale_colour_ymy_seq_c(name = "Coral", amount = 0.6)
#'
#' # Set reversed order for gradient colour
#' library(ggplot2)
#' df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])
#' ggplot(df, aes(x = x, y = y,colour = y)) +
#' geom_point(size = 10) +
#' theme_bw() +
#' scale_colour_ymy_seq_c(name = "Green", amount = 0.6, direction = -1)

scale_colour_ymy_seq_c <- function(name = names(ymy_colours)[1],
                                   direction = 1,
                                   amount = 0.2,
                                   ...) {

  if(!name %in% names(ymy_colours))
    stop('Colour must be "Orange", "Blue", "Green", "Coral", "Rust" or "Yellow"', call. = FALSE)

  low <- ymy_colours[[name]]
  top <- colorspace::lighten(low, amount = amount)
  range <- c(low, top)

  if(direction == -1) range <- rev(range)

  ggplot2::scale_color_gradient(low = range[1],
                                high = range[2],
                                ...
  )
}






