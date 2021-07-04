#' Remove > and + from the run area and add # to the run result
#' @title  Remove > and + from the run area and add # to the run result
#' @author  Chai
#' @importFrom readr clipboard
#' @importFrom  magrittr %>%
#' @description  Remove '>' and '+' from the run area and add # to
#' the run result.
#' @param  preffix  The preffix for code.
#' @export
console_cl <- function( preffix ='#>'){
  str_a <- function(x, preffix = preffix) {
    x <- trimws(x)
    x1 <- substr(x,1,1);x1
    if (x1 == '>' | x1 == '+') x <-  substring(x,2)
    else if ( x1 == preffix) x <- paste('',x)
    else x <- paste('', preffix, x)
    return(x)
  }
  a <-  readr::clipboard()
  if (is.character(a) == T) {
    sapply(a, str_a, preffix = preffix) %>%  cat(file = 'clipboard')
    }
  else return('Clipboard is wrong!')
}
