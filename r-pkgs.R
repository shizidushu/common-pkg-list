# install package that meant to be used
if (!require(devtools)) install.packages("devtools")

list_of_packages <- c("car", "config", "cowplot", "devtools", "dplyr", "DT", "flexdashboard", 
                      "forcats", "formattable", "future", "ggmap", "ggplot2", "ggrepel", 
                      "ggthemes", "glue", "htmltools", "htmlwidgets", "httpuv", "httr", 
                      "jsonlite", "knitr", "lubridate", "magrittr", "mailR", "odbc", 
                      "openxlsx", "optparse", "pander", "plotly", "plumber", "pool", 
                      "promises", "purrr", "Rcpp", "readr", "readxl", "redux", "remotes", 
                      "rlang", "rmarkdown", "RSelenium", "shiny.router", "shinyjs", 
                      "shinythemes", "showtext", "sjmisc", "stringr", "styler", "swagger", 
                      "tidyr", "tidyverse", "urltools", "wdman", "wordcloud2", "writexl", 
                      "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)

devtools::install_github('shizidushu/hfun')
devtools::install_github("thomasp85/patchwork")

wdman:::selenium_check(verbose = TRUE)
# wdman:::gecko_check(verbose = TRUE)
# wdman:::chrome_check(verbose = TRUE)
wdman:::phantom_check(verbose = TRUE)
# rD <- RSelenium::rsDriver()
# rD[["server"]]$stop()
