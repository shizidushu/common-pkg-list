# install package that meant to be used
if (!require(devtools)) install.packages("devtools")

list_of_packages <- c("car", "config", "cowplot", "devtools", "dplyr", "DT", 
                      "flexdashboard", "forcats", "formattable", "future", "gganimate", 
                      "ggplot2", "ggrepel", "ggpubr", "ggthemes", "glue", "htmltools", 
                      "htmlwidgets", "httpuv", "httr", "jose", "jsonlite", "knitr", 
                      "lubridate", "magrittr", "mailR", "mindr", "odbc", "openxlsx", 
                      "optparse", "pander", "plotly", "plumber", "pool", "promises", 
                      "purrr", "Rcpp", "readr", "readxl", "rebus", "redux", 
                      "remotes", "rlang", "rmarkdown", "shinydashboard", "shinyjs", 
                      "shinythemes", "showtext", "sjmisc", "stringr", "styler", "swagger", 
                      "tidyr", "tidyverse", "urltools", "wordcloud2", "writexl", "XML"
)

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, quiet = TRUE)

devtools::install_github('shizidushu/hfun')


