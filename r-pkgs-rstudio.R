# install package that meant to be used

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# packages used in rstudio
list_of_packages <- c("addinslist", "blogdown", "bookdown", "colourpicker", "ggedit", 
                      "ggThemeAssist", "styler", "testthat", "testthis")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/', quiet = TRUE)

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')

devtools::install_github('mwip/beautifyR')
devtools::install_github("lbusett/insert_table")
devtools::install_github("gadenbuie/regexplain")
devtools::install_github("lorenzwalthert/strcode")
devtools::install_github("pzhaonet/bookdownplus")
