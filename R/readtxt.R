#' @title  read the text to data.frame
#' @author Chai
#' @description read the strings and transform to
#' the data.frame
#' @importFrom  utils read.table
#' @param text strings
#' @param header logical value
#' @param ... for read.table
#' @export
read.txt <- function(text,header =  T,...) {
  return(read.table(text = text, header = header,...))
}
