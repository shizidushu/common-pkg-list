# install package that meant to be used
if (!require(devtools)) install.packages("devtools")


list_of_packages <- c("plotly", "shinydashboard", "shinyjs", "shinythemes", "shinyWidgets")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, quiet = TRUE)

install.packages(attr(old.packages(), "dimnames")[[1]])


remotes::install_github("r-lib/remotes")
remotes::install_github('bbc/bbplot', quiet = TRUE)
remotes::install_github("rstudio/gt", quiet = TRUE)
