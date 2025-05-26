# TBI Technical Test 
# 01. Data processing

### Libraries

library(haven)
library(dplyr)
library(tidyr)
library(stringr)
library(labelled)
library(data.table)
library(readxl)
library(readr)
library(purrr)
library(haven)
library(dplyr)
library(tidyr)
library(stringr)
library(labelled)
library(data.table)
library(ggplot2)
library(shinydashboard)
library(shiny)
library(shinythemes)
library(DT)
library(maps)
library(mapdata)
library(leaflet)
library(rnaturalearth)
library(sf)
library(plotly)
library(officer)
library(flextable)
library(viridis)
library(here)
library(glue)
library(colourpicker)
library(wbstats)
library(htmlwidgets)
library(bs4Dash)
library(countrycode)
library(bslib)
library(lubridate)
library(scales)
library(patchwork)
library(zoo)
library(scales)
library(waffle)
library(purrr)
library(ggimage)
library(forcats)
library(readxl)


#Data paths 


data_path <- "C:/WBG/GitHub/Growing-Good-Jobs"


### Loading data ----

# Load the data correctly

data_wwbi <- read_dta(file.path(data_path, "Data/in", "data_wwbi.dta"))

data_hour <- read_excel(
  path = file.path(data_path, "Data/in", "graphs for report chapter 3 (1).xlsx"),
  sheet = "weeklyhourly regression"
)

data_people <- read_excel(
  path = file.path(data_path, "Data/in", "graphs for report chapter 3 (1).xlsx"),
  sheet = "size of public sector pc"
)


data_educgender <- read_excel(
  path = file.path(data_path, "Data/in", "graphs for report chapter 3 (1).xlsx"),
  sheet = "education_attainment"
)


data_gdp <- read_dta(file.path(data_path, "Data/in/gdp_2015.dta"))

data_bih <- read_dta (file.path(data_path, "Data/in/Bosnia_clean.dta"))


data_gov <- read_dta(file.path(data_path, "Data/in", "wgidataset.dta"))


#View data main data 

View(data_wwbi)
head(data_wwbi)
n_distinct(data_wwbi)
nrow(data_wwbi) # 61004 observations 
glimpse(data_wwbi)



# Ensure data_wwbi is a data.table


setDT(data_wwbi)  
