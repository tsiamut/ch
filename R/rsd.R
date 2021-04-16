#' relative standard deviation
#' @description Calculate relative standard deviation
#' @param  x vector
#' @param digits the finally digits
#' @title relative standard deviation
#' @importFrom magrittr %>%
#' @importFrom stats  sd
#' @export
#' @author tsia

rsd <- function(x,digits = 4){
  sd(x) / x  * 100 -> a
  format(a, digits = digits) %>%
    paste0( '%') %>%
    print(quote = F)
}
