

#### Package-Loading Information ####
.onAttach <- function(libname, pkgname) {
   
  packageStartupMessage(
    yellow("Welcome to ch package\n"),
    blue(" Some  functions about ch:\n"),
    cyan("   show_color(), ggpng(), plot_table()\n"),
    cyan("   showruler(), period_table(), symb()\n"),
    cyan("   csv2vcf(), lat_fmt(), ground_state()\n"),
    cyan("   stat(), sym2poly()\n")
  )
}

