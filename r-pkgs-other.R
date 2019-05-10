# install package that meant to be used

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# - rstudio
list_of_packages <- c("colorspace", "cowplot", "cronR", "DiagrammeR", "dummies", 
                      "dygraphs", "faraway", "gifski", "highcharter", "magick", "metricsgraphics", 
                      "pixiedust", "rattle", "Rcpp", "rio", "RJDBC", "RPostgreSQL", 
                      "RSelenium", "sf", "storr", "tailr", "urltools", "wdman", "loggit")



# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')


devtools::install_github('shizidushu/hfun')


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