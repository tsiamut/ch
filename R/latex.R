#' tex format for symbolic computation output
#' @description tex output to clipboard
#' @param  x  Ryacas object
#' @title tex format and $$...$$
#' @importFrom  Ryacas tex
#' @importFrom readr clipboard
#' @author Chai
#' @examples
#' \dontrun{
#' p_load(Ryacas)
#' r <- ysym('r')
# A <- ysym('A')
#' B <- ysym('B')
#' a <- ysym('a')
#' x1 <- A*B*r*exp(-B*r/2)* cos(a)
#' deriv(x1,'r') %>%  simplify %>% latex
#' deriv(x1,'r') %>%  simplify %>% la
#' deriv(x1,'r') %>%  simplify %>% lat
#'}
#' @export
latex_fmt <- function(x){
  x <-  Ryacas::tex(x)
  x <- paste('$$',x,'$$')
  readr::clipboard(x)
}
#' @rdname latex_fmt
#' @description output to console
#' @export
lat_fmt <-  function(x){
  x <- Ryacas::tex(x)
  x <- paste('$$',x,'$$')
  cat(x)
}



