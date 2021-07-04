#' @title Calculate The pH
#' @description Calculate the pH of weak acids
#' @param  ka 	ionization constant
#' @param  c concentration
#' @param  digits digit
#' @examples
#' monoa(1.35e-5,0.01)
#' @export
monoa <- function(ka,c,digits = 2){
  mono(ka,c,digits = digits,T)
}

#' @rdname monoa
#' @description Calculate the pH of weak bases.
#' @param  ka ionization constant
#' @param  c concentration
#' @param  digits digit
#' @examples
#' monob(1.35e-5,0.01)
#' @export
monob <- function(ka,c,digits = 2){
  mono(ka,c,digits = digits, F)
}
#' @author Chai


#' @rdname monoa
#' @export
#' @param  acid if TRUE, it is equivalent
#' to monoa function; if FALSE, it is
#' equivalent to monob function.
mono <- function(ka,c,digits = 2,acid = T){
  kw <- 1e-14
  while(ka*c >= 20*kw  &  c/ka >= 500){
    H <- sqrt(ka*c)
    pH = -log10(H)
    if(acid == F)  pH = 14 - pH
    return(print(pH,digits = digits))

  }
  while(ka*c >= 20*kw  &  c/ka <=500){
    H <- 0.5* (-ka + sqrt(ka^2 + 4*ka*c))
    pH = -log10(H)
    if(acid == F)  pH = 14 - pH
    return(print(pH,digits = digits))
  }
  while(ka*c <= 20*kw &  c/ka >= 500){
    H <- sqrt(ka*c + kw)
    pH = -log10(H)
    if(acid == F)  pH = 14 - pH
    return(print(pH,digits = digits))
  }
}
