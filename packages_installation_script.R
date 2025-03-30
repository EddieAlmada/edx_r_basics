# List of commonly used R packages
common_packages <- c(
  "tidyverse",    # Data manipulation and visualization
  "data.table",   # Efficient data handling
  "ggplot2",      # Advanced data visualization
  "dplyr",        # Data manipulation
  "readr",        # Read CSV and other files
  "lubridate",    # Work with dates and times
  "stringr",      # String manipulation
  "forcats",      # Work with categorical variables
  "caret",        # Machine learning
  "randomForest", # Random forest models
  "xgboost",      # Gradient boosting
  "shiny",        # Web applications in R
  "plotly",       # Interactive plots
  "leaflet",      # Maps and geospatial data
  "rmarkdown",    # Reports and documents
  "knitr",         # Dynamic report generation
  "dslabs"
)

# Install missing packages
install_if_missing <- function(packages) {
  missing_packages <- packages[!(packages %in% installed.packages()[,"Package"])]
  if (length(missing_packages) > 0) {
    install.packages(missing_packages, dependencies = TRUE)
  }
}

# Install and load packages
install_if_missing(common_packages)

# Load all packages
lapply(common_packages, library, character.only = TRUE)