# install package that meant to be used
if (!require(devtools)) install.packages("devtools")

list_of_packages <- c("car", "config", "cowplot", "devtools", "dplyr", "DT", "flexdashboard", 
                      "forcats", "formattable", "future", "ggmap", "ggplot2", "ggrepel", 
                      "ggthemes", "glue", "htmltools", "htmlwidgets", "httpuv", "httr", 
                      "jsonlite", "knitr", "lubridate", "magrittr", "mailR", "odbc", 
                      "openxlsx", "optparse", "pander", "plotly", "plumber", "pool", 
                      "promises", "purrr", "Rcpp", "readr", "readxl", "redux", "remotes", 
                      "rlang", "rmarkdown", "shiny.router", "shinyjs", "shinythemes", 
                      "showtext", "sjmisc", "stringr", "styler", "swagger", "tidyr", 
                      "tidyverse", "urltools", "wordcloud2", "writexl", "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)

devtools::install_github("thomasp85/patchwork")

devtools::install_github("hrbrmstr/decapitated")

# todo: fix the following script
#if (!dir.exists('/home/rstudio/bin/')) {dir.create('/home/rstudio/bin/')}
#decapitated::download_chromium('/home/rstudio/bin')
#write('HEADLESS_CHROME=/home/rstudio/bin/chrome-linux/chrome',file="/usr/local/lib/R/etc/Renviron",append=TRUE)