# temporary startup message to inform users about the new version of 'fastText' [ SEE : http://r-pkgs.had.co.nz/r.html#r-differences ]

.onAttach <- function(libname, pkgname) {

  packageStartupMessage("UPDATE 11-04-2019: There is an updated version of the fastText R package which includes all the features of the ported fasttext library. This R package is archived. Please visit 'https://github.com/mlampros/fastText' to install the most updated version!")
}
