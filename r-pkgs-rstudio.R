# install package only used in Rstudio IDE

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')

# -rstudio
list_of_packages <- c("addinslist", "blogdown", "bookdown", "usethis")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/')

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')


