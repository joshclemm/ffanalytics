#install.packages("dplyr")    # alternative installation of the %>%
library(dplyr)    # alternatively, this also loads %>%
library(tibble)
library(tidyr)
library(purrr)
library(stringr)
library(httr)
library(rvest)
library(xml2)

setwd("/Users/joshclemm/FantasyFootballAnalytics/R")
#list.files()
files.sources = list.files(pattern="*.R")
sapply(files.sources, source)
