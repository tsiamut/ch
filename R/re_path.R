
#' @title  change path in MS windows
#' @description transfer 'D:\ R\ b\' to 'D:/R/b', and 
#' write to the clipboard.
#'@return Transfer path to the clipboard.
#'@importFrom clipr read_clip write_clip
#' @export

re_path <- function(){
  f <- read_clip()
  if (class(f) == 'character'){
  f1 <- gsub('\\\\','/',f)
  write_clip(f1)
  } else {
    return('Please check the clipboard!')
  }
  }