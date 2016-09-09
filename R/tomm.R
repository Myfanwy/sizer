#' Convert pixel width to millimeters with a given dpi value
#'
#' @param width width in pixels
#' @param height height in pixels
#' @param dpi=300 dpi value
#' @return the new width and height values in millimeters
#' @examples
#' tomm(1300, 2000)

tomm <- function(width, height, dpi = 300) {
  widthout = (width * 25.4) / dpi
  heightout = (height * 25.4) / dpi
  return(c(widthout, heightout))
}

