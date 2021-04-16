#' @title Read string into a vector
#' @description Read data into a vector  from a string.
#' @param string a string that number is separeted by ' '.
#' @examples
#' m <- '12 23 45 78 90 89 97'
#' scan.str(m)
#' @export
scan.str  <- function(string){
  return(scan(text = string))
}