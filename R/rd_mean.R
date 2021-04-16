#' Relative mean deviation
#' @description Calculate relative mean deviation
#' @param  x  vector
#' @param digits digit
#' @title relative mean deviation
#' @importFrom magrittr %>%
#' @export
#' @examples
#' rd_mean(c(0.001,0.023,0.01))


rd_mean <- function(x, digits = 4){
  x1 <- mean(x)
  t = (x - x1)/ x1
  abs(t) %>% mean  -> d
  d  / x1  * 100 -> f
  format(f, digits = digits) %>%  paste0( '%') %>% print( quote = F)
}
