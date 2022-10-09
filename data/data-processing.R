# Data processing for workshop
# This script takes _Urbanization - Dataset - v1.xlsx and generates:
#   - urban_population.csv
#   - countries.csv

library(tidyverse)

df <- readxl::read_excel("data/_Urbanization - Dataset - v1.xlsx", sheet="data-for-countries-etc-by-year")

regions <- readxl::read_excel("data/_Urbanization - Dataset - v1.xlsx", 
                              sheet = "input-data-pop-in-cities-from-U", 
                              skip = 16)
regs <- regions %>%
  select(`Country Code`,`Region, subregion, country or area *`) %>%
  unique()

# continents are in capitals
continents <- regs$`Region, subregion, country or area *`[stringr::str_detect(regs$`Region, subregion, country or area *`, "[:upper:]{2,}")]
continents <- continents[!stringr::str_detect(continents, "[:lower:]{2,}")]

# where are they in the data
cont_start_list = NULL
for(cont in continents){
  cont_start <- min(which(regs$`Region, subregion, country or area *` == cont))
  cont_start_list <- c(cont_start_list, cont_start)
}

cont_end_list = cont_start_list -1
cont_end_list = cont_end_list[2:length(cont_end_list)]
cont_end_list = c(cont_end_list, nrow(regs))

cont_index <- data.frame(continents,"start"=cont_start_list, "end" = cont_end_list)

# make list of continents
continent_perregion <- NULL
for(n in 1:nrow(regs)){
  cont = cont_index %>%
    filter(start <= n & end >= n) %>%
    select(continents) %>%
    as.character()
  continent_perregion <- c(continent_perregion, cont)
}

regs$Continent <- continent_perregion

# filter out the continents and subregions
regs <- regs %>%
  filter(`Country Code` < 900)

# rename the columns
regs <- regs %>%
  rename(code = `Country Code`,
         country = `Region, subregion, country or area *`,
         continent = Continent) %>%
  arrange(country)

readr::write_csv(regs, file = "data/countries.csv")


# merge with main dataset
df <- df %>%
  dplyr::left_join(regs, by = c("name" = "country"))


# edit columns to be easier to work with
df <- df %>%
  mutate(population_small_cities = `Population in cities with less than 300k people` + `Population in cities with 300k to 500k people`,
         population_medium_cities = `Population in cities with 500k  to 1m people`,
         population_large_cities = `Population in cities with 1 to 5m people`,
         population_very_large_cities = `Population in cities with 5 to 10m people` + `Population in cities with more than 10m people`,
         perc_pop_small_cities = `Population in cities with less than 300k people (% total population)` + `Population in cities with 300k to 500k people (% total population)`,
         perc_pop_medium_cities = `Population in cities with 500k  to 1m people (% total population)`,
         perc_pop_large_cities = `Population in cities with 1 to 5m people (% total population)`,
         perc_pop_very_large_cities = `Population in cities with 5 to 10m people (% total population)` + `Population in cities with more than 10m people (% total population)`) %>%
  select(geo, code, continent, name, time, starts_with("population_"), starts_with("perc_pop"))

readr::write_csv(df, file = "data/urban_population.csv")


