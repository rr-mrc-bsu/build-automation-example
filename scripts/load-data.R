# command line script for loading the required data

library(tidyverse)

args <- commandArgs(trailingOnly = TRUE)

# just load, tranform to tibble and save
read_csv(args[[1]]) %>%
    as_tibble(rownames = NULL) %>%
    saveRDS(file = args[[2]])
