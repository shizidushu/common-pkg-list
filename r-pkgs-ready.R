# install package that I at least know a bit
# not ready for production

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# -rstudio
list_of_packages <- c("caret", "crosstalk", "flexdashboard", "formattable", "gganimate", 
                      "ggforce", "ggmap", "ggpubr", "ggrepel", "ggstatsplot", "ggthemes", 
                      "leaflet", "mindr", "pander", "tidypredict", "yardstick")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')

devtools::install_github("thomasp85/patchwork")
