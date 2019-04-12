# install package that meant to be used
if (!require(devtools)) install.packages("devtools")


list_of_packages <- c("blastula", "car", "config", "devtools", "dplyr", "DT", "forcats", 
                      "future", "ggforce", "ggplot2", "ggpubr", "ggrepel", "ggthemes", 
                      "glue", "htmltools", "htmlwidgets", "httpuv", "httr", "jose", 
                      "jsonlite", "knitr", "lubridate", "magrittr", "mailR", "odbc", 
                      "openxlsx", "optparse", "plumber", "pool", "promises", "purrr", 
                      "Rcpp", "readr", "readxl", "rebus", "redux", "reticulate", "rlang", 
                      "rlist", "rmarkdown", "showtext", "sjmisc", "stringr", "tidyr", 
                      "tidyverse", "urltools", "wordcloud2", "writexl", "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, quiet = TRUE)

install.packages(attr(old.packages(), "dimnames")[[1]])

devtools::install_github('shizidushu/hfun', quiet = TRUE)


