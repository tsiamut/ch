#' relative  deviation
#' @description Calculate relative  deviation
#' @param  x  a vector
#' @param digits digit
#' @title relative  deviation
#' @examples
#'  a1 = c(0.001,0.023,0.015)
#'  rd(a1)
#' @export
#' @author tsia
#' @importFrom magrittr %>%
rd <- function(x,digits = 4) {
  x1 <- mean(x)
  t = (x - x1)/ x1
  paste0('%02.0',digits,'f') %>%
    sprintf(t*100) %>%
    paste0('%') %>% print(quote = F)
}
