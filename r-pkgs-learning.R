# experimental


# - rstudio
list_of_packages <- c("arules", "arulesViz", "brms", "car", "caret", "clValid", "ezknitr", 
                      "gganimate", "ggforce", "ggstatsplot", "ISLR", "leaps", "lobstr", 
                      "mindr", "quantmod", "ranger", "reticulate", "ROCR", "rpart", 
                      "rpart.plot", "sjmisc", "tidypredict", "yardstick")

# dput(sort(unique(list_of_packages)))

list_of_packages <- unique(list_of_packages)

new_packages <- list_of_packages[! list_of_packages %in% installed.packages()[,"Package"] ]

if(length(new_packages)) install.packages(new_packages, quiet = TRUE)


# It seems hugo installed for root user and other users need to install their own hugo
# while (!file.exists("/root/bin/hugo")) {
#   blogdown::install_hugo()
# }


devtools::install_github('shizidushu/hfun')
devtools::install_github("rstudio/distill")