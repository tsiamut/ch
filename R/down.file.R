#' download files
#' @description To download files form the url
#' @param  url a website
#' @param numbers the numbers need to count
#' @param filename a file to save, that is a pdf
#' @title download files
#' @export
#' @author tsia
#' @importFrom utils  choose.dir download.file
#' @details
down_files <- function(url, numbers, filename) {
   paste0(url,1:numbers, '.png') -> u
  n <- as.character(numbers)
  ab <- c(0.3,0.3,0.4,0.1,0.5,0.2,0.25)
  n_length <- nchar(n)
  n1 <- paste0('%0',n_length, '.0f')
  sprintf(n1, 1:numbers) %>% paste0('.png') -> f
  setwd(choose.dir())
  for (i in 1:length(u) ) {
    download.file(u[i], f[i], mode = 'wb')
    Sys.sleep(sample(ab,1)) }
  paste('magick  *.png', filename) -> f
  system(f)
}
