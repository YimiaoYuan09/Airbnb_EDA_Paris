#### Preamble ####
# Purpose: Downloads and saves the Airbnb listings data in Paris from Inside Airbnb
# Author: Yimiao Yuan
# Date: 04 March 2024
# Contact: yymlinda.yuan@mail.utoronto.ca
# License: --
# Pre-requisites: --


#### Workspace setup ####
library(tidyverse)


#### Download data ####
url <-
  paste0(
    "http://data.insideairbnb.com/france/ile-de-france/",
    "paris/2023-12-12/data/listings.csv.gz"
  )

airbnb_raw <-
  read_csv(
    file = url,
    guess_max = 20000
  )


#### Save data ####
write_csv(airbnb_raw, "inputs/data/airbnb_raw_data.csv")

         
