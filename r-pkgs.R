list_of_packages <- c("blogdown", "car", "colorspace", "config", "cronR", "dbplyr", 
                      "devtools", "DiagrammeR", "dygraphs", "faraway", "flexdashboard", 
                      "future", "ggmap", "ggplot2", "ggrepel", "ggthemes", "glue", 
                      "htmltools", "ISLR", "jsonlite", "knitr", "lubridate", "magick", 
                      "magrittr", "mailR", "odbc", "openxlsx", "pander", "pixiedust", 
                      "plotly", "pool", "promises", "pryr", "purrr", "quantmod", "rattle", 
                      "Rcpp", "readr", "readxl", "redux", "remotes", "rJava", "RJDBC", 
                      "rlang", "rmarkdown", "ROCR", "rpart.plot", "RPostgreSQL", "shinyjs", 
                      "shinythemes", "showtext", "sjmisc", "storr", "styler", "swagger", 
                      "tidypredict", "tidyverse", "tinytex", "urltools", "viridis", 
                      "writexl", "XML", "reticulate", "cowplot", "httr")

# dput(sort(list_of_packages))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)
