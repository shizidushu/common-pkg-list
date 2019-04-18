# install package that meant to be used
if (!require(devtools)) install.packages("devtools")


list_of_packages <- c("blastula", "brms", "car", "caret", "clValid", "config", "devtools", 
                      "dplyr", "forcats", "formattable", "future", "ggforce", "ggplot2", 
                      "ggpubr", "ggrepel", "ggthemes", "glue", "httpuv", "httr", "jose", 
                      "jsonlite", "JuliaCall", "knitr", "loggit", "lubridate", "magrittr", 
                      "mailR", "odbc", "openxlsx", "optparse", "plumber", "pool", "promises", 
                      "purrr", "Rcpp", "readr", "readxl", "rebus", "redux", "reticulate", 
                      "rlang", "rlist", "rmarkdown", "rpart", "rpart.plot", "showtext", 
                      "sjmisc", "stringr", "tidyr", "tidyverse", "urltools", "writexl", 
                      "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')

install.packages('remotes', repo = 'https://cran.rstudio.com/')
devtools::install_github('shizidushu/hfun')


