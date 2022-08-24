# Data processing for workshop

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
