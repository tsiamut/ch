

#### Package-Loading Information ####
.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    crayon::magenta("Welcome to ch package\n"),
    crayon::blue(" Some  functions about ch:\n"),
    crayon::cyan("   show_color(), ggpng(), plot_table()\n"),
    crayon::cyan("   showruler(), period_table(), symb()\n"),
    crayon::cyan("   csv2vcf(), lat_fmt(), ground_state()\n"),
    crayon::cyan("   stat(), sym2poly()\n")
  )
}

