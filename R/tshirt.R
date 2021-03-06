#' Export a t-shirt-sized image
#' @description  Saves a plot object as an image file that meets the dimension requirements of the "T-shirts/V-necks/Tank Tops/Long Sleeve/Biker Tanks/Hoodies" product on society6.com (1300 pixels in width, 2000 pixels in height)
#'
#'
#' @param filename the filename including the extension
#' @param plot the plot object you want to export in the t-shirt size
#' @param filetype choose either "jpeg" or "png"
#' @param dpi default is 300
#' @details Note: current options are jpg or png, and this function has NOT been tested on Windows.  If you select "png" as your filetype, note that the transparency will be set to on.
#' @export


tshirt <- function(filename = "plot", plot, filetype = c("jpeg", "png"), dpi = 300) {
  if(filetype == "jpeg") {
    dev.print(jpeg, file = filename, width = 5100, height = 3300, res = dpi, units = "px")
    print(plot)
    dev.off()
  } else if (filetype == "png") {
    dev.print(png, file = filename, width = 5100, height = 3300, res = dpi, units = "px",
              bg = "transparent")
    print(plot)
    dev.off()
  } else {
    message("You didn't specify a valid filetype")}
}


