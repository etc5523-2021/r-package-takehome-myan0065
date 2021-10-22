# This is where your discrete ggplot palettes would go

#' Discrete colour scale from YmyColour
#' @param palette character string, specifying the name of the palette to be used.
#' @param direction Sets the order of colours in the scale. If 1, the default, colours are ordered as default order. If -1, the order of colours is reversed.
#' @param aesthetics character string or vector of character strings listing the name(s) of the aesthetic(s) that this scale works with.
#' For example, to apply colour settings to colour or fill aesthetics, use aesthetics = c("colour", "fill").
#' @param ... Other arguments passed on to \code{\link[ggplot2]{discrete_scale}}], \code{\link[ggplot2]{continuous_scale}},
#' or \code{\link[ggplot2]{binned_scale}} to control name, limits, breaks, labels and so forth.
#'
#' @import ggplot2
#' @details The ymy scales were carefully designed and tested on discrete data. They were not designed to be extended to continuous data.
#' @seealso Other colour scales: \code{\link[ggplot2]{scale_colour_brewer}}, \code{\link[ggplot2]{scale_colour_viridis_d}}
#' @export
#'
#' @examples
#' # Use default colour order
#' library(ggplot2)
#' df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])
#' ggplot(df, aes(x = x, y = y, colour = type)) +
#' geom_point(size = 10) +
#' theme_bw()
#' scale_colour_ymy_d()
#'
#' # Use reversed colour order
#' library(ggplot2)
#' df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])
#' ggplot(df, aes(x = x, y = y, colour = type)) +
#' geom_point(size = 10) +
#' theme_bw() +
#' scale_colour_ymy_d(direction = -1)
#'
#' # scale_fill_ymy_d works just the same as
#' # scale_colour_ymy_d but for filling colours
#' library(ggplot2)
#' df <- data.frame(x = 1:6, y = 1:6, type = letters[1:6])
#' ggplot(df, aes(x = x, y = y, fill = type))+
#' geom_bar(stat = 'identity') +
#' theme_bw() +
#' scale_fill_ymy_d()



scale_colour_ymy_d <- function(palette = "ymy_colours",
                               direction = 1,
                               aesthetics = "colour",
                               ...) {
  ggplot2::discrete_scale(aesthetics,
                          scale_name = "ymy_colours",
                          palette = ymy_palette(palette, direction),
                          ...
  )
}


#' @rdname scale_colour_ymy_d
#' @export
scale_fill_ymy_d <- function(palette = "ymy_colours",
                             direction = 1,
                             aesthetics = "fill",
                             ...) {
  ggplot2::discrete_scale(aesthetics,
                          scale_name = "ymy_colours",
                          palette = ymy_palette(palette, direction),
                          ...
  )
}


