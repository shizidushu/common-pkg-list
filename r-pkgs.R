# install package that meant to be used
if (!require(devtools)) install.packages("devtools")

list_of_packages <- c("car", "config", "cowplot", "dbplyr", "devtools", "dplyr", 
                      "DT", "flexdashboard", "formattable", "future", "ggmap", "ggplot2", 
                      "ggrepel", "ggthemes", "glue", "htmltools", "htmlwidgets", "httpuv", 
                      "httr", "jsonlite", "knitr", "lubridate", "magrittr", "mailR", 
                      "odbc", "openxlsx", "optparse", "pander", "plotly", "plumber", 
                      "pool", "promises", "purrr", "Rcpp", "readr", "readxl", "redux", 
                      "remotes", "rlang", "rmarkdown", "shiny.router", "shinyjs", "shinythemes", 
                      "showtext", "sjmisc", "stringr", "styler", "swagger", "tidyr", 
                      "tidyverse", "urltools", "viridis", "wordcloud2", "writexl", 
                      "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)
