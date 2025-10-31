### LOAD PACKAGES ----
library(tidyverse)
# install.packages("here")
library(here)
# here("R", "my-first-R-script.R")
# "R/my-first-R-script.R"

### LOAD DATA ----
data_path <- here("data", "urban_population.csv")

df <- read_csv("data/urban_population.csv", 
               col_types = cols(code = col_character()))

### MANIPU:LATE DATA ----
df_europe <- filter(df, continent == "EUROPE")
df_europe <- select(df_europe, continent, country, year, city_size, population_in_cities)

df_europe <- df |> 
  filter(continent == "EUROPE" |> 
  select(continent, country, year, city_size, population_in_cities)