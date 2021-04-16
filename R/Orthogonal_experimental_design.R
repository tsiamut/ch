#' @title Orthogonal experimental design
#' @param df data.frame
#' @param n_levels numbers of levels
#' @param digits digits of output
#' @export
ortho_design <- function(df,n_levels, digits = 3){
  ortho_experiment_design(df,n_levels,digits = digits)
}
#' @author tsia




ortho_experiment_design <- function(df,n_levels ,digits = 3){
   l <- ncol(df) - 1
   w <- df[,1:l]
   q <- df[,l + 1]
   A <- matrix(NA, nrow = n_levels, ncol = l)

   for (i in 1:l){
     tapply(q,w[,i],mean) -> A[,i]
   }
   a <- colMeans(A)
   Aa <- as.data.frame(A)
   rbind(Aa,a) -> b
   row.names(b) <- paste0('k',1:4)
   names(b) <- names(w)
   print(b,digits = digits)
}


