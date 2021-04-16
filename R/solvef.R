#' Solve a system of binary linear equations
#' @description   solve linear equations
#' @param a the first equation
#' @param b the second equation
#' @title linear equations
#' @importFrom  magrittr %>%
#' @export
#' @examples
#' solvef(c(1,2,3),c(2.5,3,6))


solvef <- function(a,b) {
  a1 <- matrix(c(a[1:2],b[1:2]),nrow = 2, byrow = T)
  b1 <- matrix(c(a[3],b[3]),nrow = 2)
  solve(a1,b1) %>% as.numeric
}
