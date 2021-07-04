#' @title Make multiple yacas symbols
#' @description It may be faster than using \code{\link[Ryacas]{ysym}}.
#' @param  ...  The multiple vectors.
#' @param envir The environment.
#' @param  quite  If FALSE, it will show the message in the end.
#' @importFrom  Ryacas ysym
#' @importFrom magrittr %>%
#' @author Chai
#' @examples
#' \dontrun{
#' library(Ryacas)
#' symb(x,y,z)
#' str(x)
#'}
#' @export
symb <- function(...,envir = parent.frame(),quite = F) {
  syms<- eval(substitute(alist(...)))
  for (i in seq_along(syms)) {
    sym <- syms[[i]] %>%  as.character
    assign(sym, Ryacas::ysym(sym),envir = envir)
  }
  if (!quite) {
    symbols <- as.character(syms)
    message('symbols --> ', sprintf('%s ',symbols) )
  }
}
