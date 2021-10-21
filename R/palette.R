# Define colour palette variables and functions here

# the palette function returns a function,
# so it would be called like NAME_palette()(2) to generate
# your palette with two colours

# a warning or an error should be presented if n is larger
# the length of NAME_colours

# if direction is less than 1 reverse the ordering of the
# palette


ymy_colours <- list(
  # add your colours as a named list here, i.e.
  "Orange" = "#FDAC53",
  "Blue" = "#6C87A3",
  "Green" = "#70A87A",
  "Coral" = "#E9897E",
  "Rust" = "#B55A30",
  "Yellow" = "#F5DF4D"
)

#' Ymy Colour Palette
#'
#' @param palette character string, specifying the name of the palette to be used.
#' @param direction numeric, specifying the direction of the palette to be used.
#'
#' @details The ymy colour palette has 6 colours and the function is designed to allow users to choose the number of colours to be used and the direction of the colours to be applied.
#' @return A character vector of hex colour codes of 6.
#' @export
#'
#' @examples
#' ymy_palette()(2)
#' ymy_palette(direction = -1)(3)
ymy_palette <- function(palette = "ymy_colours", direction = 1) {

  if (!identical(palette, "ymy_colours")) {
    warning('Must be "ymy_colours" - other values are not supported',
            call. = FALSE)
  }

  force(direction)

  pal <- unlist(ymy_colours, use.names = FALSE)
  if(direction == -1) pal <- rev(pal)

  function(n) {

    if (n > length(ymy_colours)) {
      warning("Ymy Colour Palette only has 6 colours", call. = FALSE)
    }

    pal[seq_len(n)]
  }
}
