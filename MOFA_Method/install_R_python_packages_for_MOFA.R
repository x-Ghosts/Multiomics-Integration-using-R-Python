########## MOFA ################################################################

## Packages from CRAN
cran_packages <- c(
  "data.table",
  "ggplot2",
  "dplyr",
  "psych",
  "GGally",
  "ggpubr",
  "tidyr"
)

## Packages from Bioconductor
bioc_packages <- c(
  "MOFA2",
  "basilisk",
  "edgeR"
)

## Install BiocManager if missing
if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

## Install missing CRAN packages
missing_cran <- cran_packages[
  !vapply(cran_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_cran) > 0) {
  install.packages(missing_cran)
}

## Install missing Bioconductor packages
missing_bioc <- bioc_packages[
  !vapply(bioc_packages, requireNamespace, logical(1), quietly = TRUE)
]

install.packages('uwot')
install.packages('RSpectra')
install.packages('RcppEigen')

if (length(missing_bioc) > 0) {
  BiocManager::install(
    missing_bioc,
    ask = FALSE,
    update = FALSE
  )
}
