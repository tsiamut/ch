#' Q test
#' @description Complete the Q test
#' @param  x vector
#' @param digits  the number of digits
#' @title Q test
#' @examples
#' c(0.001,0.023,0.015,0.018,0.023,0.034,0.025) -> a2
#' Q.test(a2)
#' @export

Q.test <- function(x,digits = 2) {
  x <- sort(x)
  n <- length(x)
  x1 <- diff(x)
  x1 / (x[n] - x[1]) -> f
  (x[2] - x[1] ) / (x[n] - x[1]) -> g
  print(append(g,f),digits = digits)
}
