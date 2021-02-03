#' open a file on Windows System
#' @description open a file on Windows System
#' @param  ...  a file to open
#' @title open a file on Windows System
#' @export
#' @author tsia
#' @details Only in current path, the file doesn't  need
#'  to add the quotation marks. When adding the path, you must
#'  add the quotes.

op <- function(...) {
  file <- as.character(match.call(expand.dots = F)[[2]])
  f <- paste('start', file)
  shell(f)
}

