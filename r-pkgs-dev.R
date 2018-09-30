if (!require(devtools)) install.packages("devtools")

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

devtools::install_github('rstudio/blogdown')
devtools::install_github('ropensci/magick')
update.packages(ask = FALSE, repos = 'https://cran.r-project.org')
install.packages('knitr', repos = c('https://xran.yihui.name', 'https://cran.r-project.org'))
devtools::install_github('trestletech/plumber')
devtools::install_github("ropensci/writexl")
devtools::install_github("r-lib/lobstr")


devtools::install_github("r-lib/rlang", build_vignettes = TRUE)

devtools::install_github("hadley/tidyverse")
devtools::install_github("tidyverse/dplyr")
devtools::install_github("tidyverse/ggplot2")
devtools::install_github("tidyverse/readr")
devtools::install_github("tidyverse/purrr")
devtools::install_github("tidyverse/magrittr")
devtools::install_github("tidyverse/tidyr")
devtools::install_github("tidyverse/reprex")
devtools::install_github("tidyverse/dbplyr")
devtools::install_github("tidyverse/lubridate")
devtools::install_github("tidyverse/tidyselect")
devtools::install_github("tidyverse/modelr")
devtools::install_github("tidyverse/readxl")
devtools::install_github("tidyverse/hms")
devtools::install_github("tidyverse/stringr")
devtools::install_github("tidyverse/glue")
devtools::install_github("tidyverse/forcats")
