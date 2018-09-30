if (!require(devtools)) install.packages("devtools")

devtools::install_github("hadley/tidyverse")
devtools::install_github('rstudio/blogdown')
devtools::install_github('ropensci/magick')
update.packages(ask = FALSE, repos = 'https://cran.r-project.org')
install.packages('knitr', repos = c('https://xran.yihui.name', 'https://cran.r-project.org'))
devtools::install_github('trestletech/plumber')
devtools::install_github("r-lib/lobstr")

blogdown::install_hugo()
devtools::install_github('shizidushu/hfun', dependencies=TRUE)

list_of_packages <- c("car", "config", "cronR", "future", "ggmap", "ggrepel", "ggthemes", 
                      "tidypredict", "writexl", "XML", "ISLR", "sjmisc", "styler", 
                      "viridis", "odbc", "plotly", "pool", "promises", "pryr", "quantmod", 
                      "Rcpp", "rJava", "RPostgreSQL", "rmarkdown")

# dput(list_of_packages[order(list_of_packages)])

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)
