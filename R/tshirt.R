#' Export a t-shirt-sized image
#' @description  Saves a plot object as an image file that meets the dimension requirements of the "T-shirts/V-necks/Tank Tops/Long Sleeve/Biker Tanks/Hoodies" product on society6.com (1300 pixels in width, 2000 pixels in height)
#'
#'
#' @param filename the filename including the extension
#' @param plot the plot object you want to export in the t-shirt size
#' @details Note: current options are jpg or png, and this function has NOT been tested on Windows.  If you select "png" as your filetype, note that the transparency will be set to on.
#' @examples
#' # Base R example
#' p <- plot(iris$Sepal.Length, y = iris$Petal.Length, type = "p", col = iris$Species)
#' phone(filename = "iris_baseR.jpeg", plot = p, filetype = "jpeg")
#'
#'## ggplot2 example
#'p <- ggplot(iris, aes(Sepal.Length, Petal.Length)) + geom_point(aes(color = Species))
#'phone(filename = "iris_ggplot.png", plot = p, filetype ="png")


tshirt <- function(filename, plot, filetype = c("jpeg", "png"), dpi = 300) {
  if(filetype == "jpeg") {
    jpeg(file = filename, width = 3300, height = 5100, quality = dpi, units = "px")
    plot
    dev.off()
  } else if (filetype == "png") {
    png(file = filename, width = 3300, height = 5100, res = dpi, units = "px", bg = "transparent")
    print(plot)
    dev.off()
  } else {
      message("You didn't specify a valid filetype")}
}


