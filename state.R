#' @title  state
#' @description About state, new function!
#' @param  x Like: d5,p2,p3,f3
#' @return the state content.
#' @examples
#' stat("d5")
#' stat("p2")
#' stat("p3")
#' stat("f3")
#' @importFrom magrittr %>%
#' @export

stat <- function(x) {
  M <- c(
    "S", "P", "D", "F", "G", "H", "I", "K",
    "L", "M", "N", "O"
  )
  mm <- tolower(M)
  l <- which(substr(x, 1, 1) == mm)
  n <- substring(x, 2) %>% as.numeric()
  N <- (2*l - 1)*2
  if (n > N) {
    return(paste0('warning: n >= ',N))
    }
  if (n == 1 ){
    a = 2
    nr = M[l]
    b = matrix(1, dimnames = list(nr,a))
    return(b)
  } else if (n == N){
    a = 0
    nr = M[l]
    b = matrix(1, dimnames = list(nr,a))
    return(b)
  }
  ms <- rep(c(0.5, -0.5), 2 * l - 1)
  ll <- (l - 1):-(l - 1)
  ml <- rep(ll, each = 2)
  Ms <- combn(ms, n, sum)
  Ml <- combn(ml, n, sum)
  xtabs(~ Ml + Ms) -> d1 # cross table
  ###########################
  state_f1(d1) -> d2
  d2[nrow(d2):1, ncol(d2):1] -> d3 # rev!
  # col&row-names
  #########
  d3[1, ] %>%
    as.matrix() %>%
    t() -> a1
  rownames(a1) <- rownames(d3)[1]
  diff(d3) -> a2
  rbind(a1, a2) -> m
  #############
  m[, 1] %>% as.matrix() -> m1
  Nc <- ncol(m)
  m2 <- NULL
  if (Nc > 2) {
    apply(m, 1, diff) %>% t() -> m2
  } else {
    apply(m, 1, diff) -> m2
  }
  cbind(m1, m2) -> m3
  ##########
  c0 <- colnames(d3)
  c1 <- as.numeric(c0)
  c2 <- 2 * c1 + 1
  colnames(m3) <- as.character(c2)
  nL <- nrow(d3)
  rownames(m3) <- rev(M[1:nL])
  m3
}



state_f1 <- function(d1) {
  nr <- nrow(d1)
  nc <- ncol(d1)
  b <- NULL
  if (nc %/% 2 == 1) {
    b <- ((nc - 1) / 2 + 1):nc
  } else {
    b <- ((nc / 2) + 1):nc
  }
  a <- ((nr - 1) / 2 + 1):nr
  return(d1[a, b])
}
