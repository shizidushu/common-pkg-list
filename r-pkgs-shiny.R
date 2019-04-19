# install package that meant to be used

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# only or mostly used in shiny app
list_of_packages <- c("addinslist", "colourpicker", "crosstalk", "DiagrammeR", "dygraphs", 
                      "ggedit", "ggThemeAssist", "highcharter", "htmltools", "htmlwidgets", 
                      "httpuv", "leaflet", "metricsgraphics", "pool", "shiny.router", 
                      "shinydashboard", "shinyjs", "shinythemes", "shinyWidgets")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')



remotes::install_github('bbc/bbplot')
remotes::install_github("rstudio/gt")
