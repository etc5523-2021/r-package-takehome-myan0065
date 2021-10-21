# Define colour palette variables and functions here
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
#' @param palette character string, specifying the name of the palette to be used
#' @param direction numeric, specifying the direction of the palette to be used
#' @param n numeric, specifying the number of colours to be used
#'
#' @details This function is designed to allow users to choose the number of colours to be used and the direction of the colours to be applied
#' @return Colours in the palette
#' @export
#'
#' @examples
#' ymy_palette()(2)
#' ymy_palette(direction = -1)(3)
ymy_palette <- function(palette = "ymy_colours", direction = 1) {
  # the palette function returns a function,
  # so it would be called like NAME_palette()(2) to generate
  # your palette with two colours
  if (!identical(palette, "ymy_colours")) {
    warning('Must be "ymy_colours" - other values are not supported',
            call. = FALSE)
  }

  force(direction)

  pal <- unlist(ymy1, use.names = FALSE)
  if(direction == -1) pal <- rev(pal)

  function(n) {
    # a warning or an error should be presented if n is larger
    # the length of NAME_colours

    # if direction is less than 1 reverse the ordering of the
    # palette
    if (n > length(ymy_colours)) {
      warning("Ymy Colour Palette only has 6 colours",
              "\nPlease select <= 6 colours \n");
    }

    pal[seq_len(n)]
  }
}
