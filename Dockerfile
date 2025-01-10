FROM risserlin/bcb420-base-image:winter2025-arm64

# Install R packages
RUN R -e "install.packages(c('BiocManager'), repos='http://cran.us.r-project.org')" && \
    R -e "BiocManager::install(c('DESeq2', 'pheatmap', 'enrichplot'))"

