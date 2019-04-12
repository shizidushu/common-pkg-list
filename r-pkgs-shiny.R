# install package that meant to be used
if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')


list_of_packages <- c("plotly", "shinydashboard", "shinyjs", "shinythemes", "shinyWidgets")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')


install.packages('remotes', repo = 'https://cran.rstudio.com/')
remotes::install_github('bbc/bbplot', repo = 'https://cran.rstudio.com/', quiet = TRUE)
remotes::install_github("rstudio/gt", repo = 'https://cran.rstudio.com/', quiet = TRUE)
