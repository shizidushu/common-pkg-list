# experimental


list_of_packages <- c("blogdown", "brms", "clValid", "colorspace", "cowplot", "cronR", 
                      "crosstalk", "dbplyr", "DiagrammeR", "dygraphs", "ezknitr", "faraway", 
                      "ggpubr", "highcharter", "hms", "ISLR", "leaflet", "magick", 
                      "metricsgraphics", "pixiedust", "pryr", "quantmod", "rattle", 
                      "reprex", "reticulate", "rio", "rJava", "RJDBC", "ROCR", "rpart.plot", 
                      "RPostgreSQL", "sf", "storr", "tidypredict", "tinytex", "viridis"
)

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)

if (!require(devtools)) install.packages("devtools")

# It seems hugo installed for root user and other users need to install their own hugo
# while (!file.exists("/root/bin/hugo")) {
#   blogdown::install_hugo()
# }

devtools::install_github("rstudio/radix")

devtools::install_github('shizidushu/hfun')
devtools::install_github("r-lib/lobstr")
devtools::install_github("r-lib/rlang", build_vignettes = TRUE)

#devtools::install_github("cosname/recharts")
#devtools::install_github("JohnCoene/echarts4r")

