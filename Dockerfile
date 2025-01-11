FROM risserlin/bcb420-base-image:winter2025

# Install R packages
RUN R -e "install.packages(c('DESeq2', 'pheatmap', 'enrichplot'), repos='http://cran.rstudio.com/')"

# Intsalling BioManager may result in longer build time, thus is only included when needed
# RUN R -e "if (!requireNamespace('BiocManager', quietly = TRUE)) install.packages('BiocManager'); \
#          BiocManager::install(c('DESeq2', 'enrichplot'))"