#' @title Generating multiple symbols at once
#' @description It may be faster than using \code{\link[Ryacas]{ysym}}.
#'
#' @param  ...  The multiple vectors.
#' @param  quite  If FALSE, it will show the message in the end.
#' @importFrom  Ryacas ysym
#' @author Chai
#' @return  The multiple symbols.
#' @examples
#' \donttest{
#' library(Ryacas)
#' symb(x, y, z)
#' str(x)
#' }
#' @export
symb <- function(..., quite = FALSE) {
  syms <- eval(substitute(alist(...)))
  for (i in seq_along(syms)) {
    sym <- as.character(syms[[i]]) 
    assign(sym, Ryacas::ysym(sym), 
           envir = parent.frame())
  }
  if (!quite) {
    symbols <- as.character(syms)
    message("symbols --> ", sprintf("%s ", symbols))
  }
}
