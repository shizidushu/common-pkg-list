list_of_packages <- c("blogdown", "car", "config", "cronR", "devtools", "future", 
                      "ggmap", "ggrepel", "ggthemes", "ISLR", "knitr", "magick", "mailR", 
                      "odbc", "openxlsx", "plotly", "pool", "promises", "pryr", "quantmod", 
                      "Rcpp", "redux", "rJava", "RJDBC", "rmarkdown", "RPostgreSQL", 
                      "sjmisc", "styler", "tidypredict", "tidyverse", "viridis", "writexl", 
                      "XML")

# dput(list_of_packages[order(list_of_packages)])

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)

devtools::install_github('trestletech/plumber')
devtools::install_github("r-lib/lobstr")

blogdown::install_hugo()
devtools::install_github('shizidushu/hfun')
