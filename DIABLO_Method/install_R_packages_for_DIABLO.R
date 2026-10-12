
# CRAN packages
cran_packages <- c(
  "tidyverse",
  "GEOquery",
  "dplyr",
  "pheatmap",
  "caret",
  "RColorBrewer",
  "reshape2",
  "igraph"
)

# Bioconductor packages
bioc_packages <- c(
  "BiocParallel",
  "mixOmics",
  "edgeR",
  "limma"
)

# Install BiocManager if needed
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

# Install missing CRAN packages
missing_cran <- cran_packages[!sapply(cran_packages, requireNamespace, quietly = TRUE)]
if (length(missing_cran) > 0)
  install.packages(missing_cran)

# Install missing Bioconductor packages
missing_bioc <- bioc_packages[!sapply(bioc_packages, requireNamespace, quietly = TRUE)]
if (length(missing_bioc) > 0)
  BiocManager::install(missing_bioc, ask = FALSE, update = FALSE)
