# install package that meant to be used

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# currently required by airflow,  plumber or shiny in application
list_of_packages <- c("config", "DT", "future", "glue", "htmltools", "htmlwidgets", 
                      "httpuv", "jose", "JuliaCall", "knitr", "loggit", "mailR", "odbc", 
                      "openxlsx", "optparse", "plotly", "plumber", "pool", "promises", 
                      "readxl", "rebus", "redux", "rlist", "rmarkdown", "shinydashboard", 
                      "shinyWidgets", "tidyverse", "wordcloud2", "writexl", "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')



devtools::install_github('shizidushu/hfun')


