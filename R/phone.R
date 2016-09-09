#' Export a phone-sized jpeg
#' @description  Saves a plot object as a jpeg file that meets the dimension requirements of the "mobile devices and skins" product on society6.com (1300 pixels in width, 2000 pixels in height)
#'
#'
#' @param filename the filename including the extension (currently only supports jpeg)
#' @param plot the plot object you want to export in the phone size
#' @details Note: current options are jpg or png, and this function has NOT been tested on Windows.
#' @examples
#' # Base R example
#' p <- plot(iris$Sepal.Length, y = iris$Petal.Length, type = "p", col = iris$Species)
#' phone(filename = "iris_baseR.jpeg", plot = p, filetype = "jpeg")
#'
#'## ggplot2 example
#'p <- ggplot(iris, aes(Sepal.Length, Petal.Length)) + geom_point(aes(color = Species))
#'phone(filename = "iris_ggplot.png", plot = p, filetype ="png")


phone <- function(filename, plot, filetype = c("jpeg", "png"), dpi = 300) {
  if(filetype == "jpeg") {
    jpeg(file = filename, width = 1300, height = 2000, quality = dpi, units = "px")
    plot
    dev.off()
  } else if (filetype == "png") {
    png(file = filename, width = 1300, height = 2000, res = dpi, units = "px", bg = "transparent")
    print(plot)
    dev.off()
  } else {
      message("You didn't specify a valid filetype")}
}


