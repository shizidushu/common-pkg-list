list_of_packages <- c("brms", "sf")

# dput(sort(list_of_packages))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)



if (!require(devtools)) install.packages("devtools")

# It seems hugo installed for root user and other users need to install their own hugo
# while (!file.exists("/root/bin/hugo")) {
#   blogdown::install_hugo()
# }


devtools::install_github('shizidushu/hfun')


devtools::install_github("rstudio/httpuv")
devtools::install_github("ramnathv/htmlwidgets")
devtools::install_github('rstudio/DT')
devtools::install_github("jbkunst/highcharter")
devtools::install_github("hrbrmstr/metricsgraphics")
devtools::install_github("rstudio/crosstalk")
devtools::install_github("jcheng5/d3scatter")
devtools::install_github("rstudio/leaflet")
devtools::install_github("cosname/recharts")
devtools::install_github("JohnCoene/echarts4r")
devtools::install_github("lchiffon/wordcloud2")
devtools::install_github("rstudio/radix")

devtools::install_github('rstudio/blogdown')
remotes::install_github("richfitz/redux", upgrade = FALSE)
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
#devtools::install_github("tidyverse/lubridate")
devtools::install_github("tidyverse/tidyselect")
devtools::install_github("tidyverse/modelr")
devtools::install_github("tidyverse/readxl")
devtools::install_github("tidyverse/hms")
devtools::install_github("tidyverse/stringr")
devtools::install_github("tidyverse/glue")
devtools::install_github("tidyverse/forcats")
