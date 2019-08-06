# occasionally needed. Do not install it with container now.

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# - rstudio
list_of_packages <- c("blastula", "bookdownplus", "car", "clValid", "colorspace", 
                      "colourpicker", "cowplot", "cronR", "crosstalk", "DiagrammeR", 
                      "dummies", "dygraphs", "ezknitr", "faraway", "flexdashboard", 
                      "formattable", "gganimate", "ggedit", "ggforce", "ggmap", "ggpubr", 
                      "ggrepel", "ggThemeAssist", "ggthemes", "gifski", "highcharter", 
                      "ISLR", "leaflet", "leaps", "lobstr", "magick", "metricsgraphics", 
                      "mindr", "pander", "pixiedust", "quantmod", "rattle", "Rcpp", 
                      "rio", "RJDBC", "ROCR", "RSelenium", "sf", "shiny.router", "shinythemes", 
                      "showtext", "sjmisc", "storr", "styler", "tailr", "urltools", 
                      "viridis", "wdman")



# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/')

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')


devtools::install_github('shizidushu/hfun')

devtools::install_github("rstudio/distill")
devtools::install_github("thomasp85/patchwork")
devtools::install_github('mwip/beautifyR')
devtools::install_github("lbusett/insert_table")
devtools::install_github("gadenbuie/regexplain")
devtools::install_github("lorenzwalthert/strcode")
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