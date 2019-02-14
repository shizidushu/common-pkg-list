# install package that meant to be used
if (!require(devtools)) install.packages("devtools")

list_of_packages <- c("car", "config",  "devtools", "dplyr", "DT", 
                      "forcats",  "future", 
                      "ggplot2", "ggforce", "ggrepel", "ggpubr", "ggthemes", "glue", "htmltools", 
                      "htmlwidgets", "httpuv", "httr", "jose", "jsonlite", "knitr", 
                      "lubridate", "magrittr", "mailR", "odbc", "openxlsx", 
                      "optparse",  "plotly", "plumber", "pool", "promises", 
                      "purrr", "Rcpp", "readr", "readxl", "rebus", "redux", 
                      "rlang", "rmarkdown", "shinydashboard", "shinyjs", 
                      "shinythemes", "showtext", "sjmisc", "stringr",
                      "tidyr", "tidyverse", "urltools", "wordcloud2", "writexl", "XML"
)

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)

devtools::install_github('shizidushu/hfun')


