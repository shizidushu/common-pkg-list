if (!require(devtools)) install.packages("devtools")

devtools::install_github("hadley/tidyverse")
devtools::install_github('rstudio/blogdown')
devtools::install_github('ropensci/magick')
update.packages(ask = FALSE, repos = 'https://cran.r-project.org')
install.packages('knitr', repos = c('https://xran.yihui.name', 'https://cran.r-project.org'))
devtools::install_github('trestletech/plumber')
devtools::install_github("r-lib/lobstr")

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

blogdown::install_hugo()
devtools::install_github('shizidushu/hfun')