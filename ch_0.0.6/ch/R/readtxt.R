#' @title  read the text to data.frame
#' @author tsia
#' @description read the strings and transform to
#' the data.frame
#' @export
#' @importFrom  utils read.table
#' @param text strings
#' @param header logical value
#' @param ... for read.table

read.txt <- function(text,header =  T,...) {
  return(read.table(text = text, header = header,...))
}
