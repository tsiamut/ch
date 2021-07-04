#' @title about csv2vcf
#' @description A simple method to generate VCF generate vcf files.
#' @param csv_file The csv file contains
#' names and  phone numbers.
#' @param vcf_file The vcf file to create.
#' @param header For more see \code{\link[utils]{read.csv}}
#' @export
csv2vcf <- function(csv_file,vcf_file, header = F){
     csvvcf(csv_file,vcf_file, header = header)
        }
#' @author Chai
#' @importFrom utils read.csv write.table

csvvcf <- function(csv_file,vcf_file, header = F){
     a <- read.csv(csv_file,header = header)
     b <- list('BEGIN:VCARD','VERSION:3.0',
             NA,NA,'END:VCARD')
     if (file.exists(vcf_file)){
             stop('Warining, vcf existed!\nYou can set a new file.')
     }else {

      for (i in 1 : nrow(a)){
        b[3] <- paste('FN:',a[i,1])
        b[4] <- paste('TEL;TYPE=CELL:',a[i,2])
        write.table(b,vcf_file,
                 append = T,sep = '\n',
                 row.names = F,col.names = F,
                 quote = F,
                 fileEncoding = 'UTF-8')
      }
       message(paste('vcf:',vcf_file))
     }
}

