# Data processing for workshop

df <- readxl::read_excel("data/_Urbanization - Dataset - v1.xlsx", sheet="data-for-countries-etc-by-year")
regions <- readxl::read_excel("data/_Urbanization - Dataset - v1.xlsx", sheet="input-data-pop-in-cities-from-U")
