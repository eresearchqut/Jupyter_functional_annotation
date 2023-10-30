



bioconductor_packages <- c("clusterProfiler", "pathview", "AnnotationHub", "org.Hs.eg.db")
cran_packages <- c("tidyverse", "ggplot2", "plyr", "readxl", "scales")
# Compares installed packages to above packages and returns a vector of missing packages
new_packages <- bioconductor_packages[!(bioconductor_packages %in% installed.packages()[,"Package"])]
new_cran_packages <- cran_packages[!(cran_packages %in% installed.packages()[,"Package"])]
# Install missing bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(new_packages)
# Install missing cran packages
if (length(new_cran_packages)) install.packages(new_cran_packages, repos = "http://cran.us.r-project.org")
# Update all installed packages to the latest version
update.packages(bioconductor_packages, ask = FALSE)
update.packages(cran_packages, ask = FALSE, repos = "http://cran.us.r-project.org")









