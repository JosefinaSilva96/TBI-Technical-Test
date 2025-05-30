### TBI Technical Test  -  Main R Script

# Load libraries ---- 

# Load necessary libraries

library(haven)  # for reading .dta files
library(dplyr)  # for data manipulation
library(tidyr)  # for reshaping data
library(stringr) # work with strings
library(labelled) # use labels
library(gtsummary) # tables
library(gt) # tables
library(ggplot2) #graphs
library(tidyverse) # working with tidy data
library(modelsummary) # creating summary tables
library(stargazer) # writing nice tables
library(RColorBrewer) # color palettes

#Recover environment----

#new users need to restore the environment by doing:
#you only need to do this the first time you interact with the package:

#renv::restore()

# Set data path ----

# this is the second root of the project, the first root is the code whose directory 
# is already being handled by the rstudio project.

data_path <- "C:/WBG/GitHub/Growing-Good-Jobs/Data"

data_path2 <- "C:/Users/wb631166/OneDrive - WBG/Desktop/Bureaucracy Lab/Reproducibility Growing Good Jobs/Data"



# Run the R scripts ----

source("Code/01-processing-data.R")

source("Code/02-analyzing-data.R")