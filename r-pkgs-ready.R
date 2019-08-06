# install package that I at least know a bit
# not ready for production

message("install packages from r-pkgs-ready.R")

if (!require(remotes)) {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
} else if (packageVersion("remotes") < "2.0.4") {
  install.packages('remotes', repo = 'https://cran.rstudio.com/')
}

if (!require(devtools)) install.packages("devtools", repo = 'https://cran.rstudio.com/')


dotR <- file.path(Sys.getenv("HOME"), ".R")
if (!file.exists(dotR)) dir.create(dotR)
M <- file.path(dotR, "Makevars")
if (!file.exists(M)) file.create(M)
cat("\nCXX14FLAGS=-O3 -march=native -mtune=native -fPIC",
    "CXX14=g++", # or clang++ but you may need a version postfix
    file = M, sep = "\n", append = TRUE)

Sys.setenv(MAKEFLAGS = paste0("-j", parallel::detectCores()))

install.packages("rstan", type = "source")


# -rstudio
list_of_packages <- c("flexdashboard", "formattable", "gganimate", 
                      "ggforce", "ggmap", "ggpubr", "ggrepel", "ggstatsplot", "ggthemes", 
                      "leaflet", "mindr", "pander")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, repo = 'https://cran.rstudio.com/')

# update old packages
## install.packages(attr(old.packages(), "dimnames")[[1]], repo = 'https://cran.rstudio.com/')

devtools::install_github("thomasp85/patchwork")
