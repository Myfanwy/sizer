#' Export the a 6500 x 5525 px jpeg or png image to meet Society6's wall tapestry dimension requirements
#' @description  Saves a plot object as an image file that meets the dimension requirements of most products on Society6 (7500 x 9000 px)
#'
#'
#' @param filename the filename including the extension
#' @param plot the plot object you want to export
#' @details Note: current options are jpg or png, and this function has NOT been tested on Windows.
#' @examples
#' # Base R example
#' p <- plot(iris$Sepal.Length, y = iris$Petal.Length, type = "p", col = iris$Species)
#' generic(filename = "iris_baseR.jpeg", plot = p, filetype = "jpeg")
#'
#'## ggplot2 example
#'p <- ggplot(iris, aes(Sepal.Length, Petal.Length)) + geom_point(aes(color = Species))
#'generic(filename = "iris_ggplot.png", plot = p, filetype ="png")


tapestry <- function(filename, plot, filetype = c("jpeg", "png"), dpi = 300) {
  if(filetype == "jpeg") {
    jpeg(file = filename, width = 6500, height = 5525, quality = dpi, units = "px")
    plot
    dev.off()
  } else if (filetype == "png") {
    png(file = filename, width = 6500, height = 5525, res = dpi, units = "px")
    print(plot)
    dev.off()
  } else {
    message("You didn't specify a valid filetype")}
}


