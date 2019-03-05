# experimental


list_of_packages <- c("addinslist", "blogdown", "brms", "caret", "clValid", "colorspace", 
                      "colourpicker", "cowplot", "cronR", "crosstalk", "dbplyr", "DiagrammeR", 
                      "dygraphs", "ezknitr", "faraway", "formattable", "ggedit", "ggmap", 
                      "ggstatsplot", "highcharter", "hms", "ISLR", "JuliaCall", "leaflet", 
                      "magick", "metricsgraphics", "pixiedust", "pryr", "quantmod", "ranger", 
                      "rattle", "reprex", "reticulate", "rio", "rJava", "RJDBC", "ROCR", 
                      "rpart.plot", "RPostgreSQL", "RSelenium", "sf", "shiny.router", 
                      "storr", "testthat", "testthis", "tidypredict", "viridis", "wdman",
                      "cowplot","flexdashboard", "formattable", "mindr", "pander","gganimate", "styler",
                      "dummies", "gifski", "tailr", "lobstr", "ggThemeAssist"
)

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages)


# It seems hugo installed for root user and other users need to install their own hugo
# while (!file.exists("/root/bin/hugo")) {
#   blogdown::install_hugo()
# }

devtools::install_github("rstudio/distill")

devtools::install_github('shizidushu/hfun')

devtools::install_github('mwip/beautifyR')
devtools::install_github("lbusett/insert_table")
devtools::install_github("gadenbuie/regexplain")
devtools::install_github("lorenzwalthert/strcode")
devtools::install_github("thomasp85/patchwork")

#devtools::install_github("r-lib/rlang", build_vignettes = TRUE)
#devtools::install_github("cosname/recharts")
#devtools::install_github("JohnCoene/echarts4r")

# wdman:::selenium_check(verbose = TRUE)
# wdman:::gecko_check(verbose = TRUE)
# wdman:::chrome_check(verbose = TRUE)
# wdman:::phantom_check(verbose = TRUE)
# rD <- RSelenium::rsDriver()
# rD[["server"]]$stop()

# devtools::install_github("hrbrmstr/decapitated")
# if (!dir.exists('~/bin')) {dir.create('~/bin')}
# loc <- decapitated::download_chromium('~/bin')
# Sys.setenv(HEADLESS_CHROME=loc)

# root permission need if write
#write(paste0('HEADLESS_CHROME=', loc), file="/usr/local/lib/R/etc/Renviron",append=TRUE)
