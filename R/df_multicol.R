#' @title The realization of multi-column repeated display of three-line
#'  table data generation.
#' @param df data.frame
#' @param n the numbers
#' @author  Chai
#' @importFrom dplyr select mutate
#' @examples
#' \dontrun{
#' d1 <- data.frame(x1 = 1:26,
#'     y = letters)
#' d1 %>%  df_multicol(2) %>%  xtable
#' d1 %>%  df_multicol(3) %>%  xtable
#' d1 %>%  df_multicol(4) %>%  xtable
#' }
#' @export
df_multicol <- function(df,n){
  a1 <- nrow(df)
  a2 <- ncol(df)
  d <- df <- as.data.frame(df)
  l <- a1 %/% n + (a1 %% n); ln <- l*n
  d[a1:ln,] <- df[a1:ln,]
  xx <- paste0('x',1:n)
  rep(1:n, each = l) -> f
    dplyr::mutate(d,f = f) -> j1
  split(j1, f) -> j2
  f1 <- function(df,f){
     dplyr::select(df,-f)
  }
  lapply(j2,f1)   -> j3
  a0 <- as.data.frame(j3[1])
  for(i in 2:n) {
    assign(xx[i],as.data.frame(j3[i]) )
    a1 <- get(xx[i])
    a0 <- cbind(a0,a1)
  }
  return(a0)
}

