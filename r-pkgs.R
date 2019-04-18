# install package that meant to be used
if (!require(devtools)) install.packages("devtools")




list_of_packages <- c("blastula", "brms", "caret", "config", "devtools", "future", 
                      "glue", "jose", "JuliaCall", "knitr", "loggit", "mailR", "odbc", 
                      "openxlsx", "optparse", "plumber", "pool", "promises", "ranger", 
                      "Rcpp", "readxl", "rebus", "redux", "reticulate", "rlist", "rmarkdown", 
                      "rpart", "tidyverse", "writexl", "XML")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')

install.packages('remotes', repo = 'https://cran.rstudio.com/')
devtools::install_github('shizidushu/hfun')


