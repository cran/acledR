## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE,include = FALSE-----------------------------------------------
library(acledR)
library(dplyr)

## ----eval=FALSE---------------------------------------------------------------
# # Install acledR
# install.packages("acledR") # from CRAN
# 
# devtools::install_github("ACLED/acledR") # or from github.
# 
# # Load acledR
# library(acledR)

## ----eval=FALSE---------------------------------------------------------------
# argentinian_data <- acled_api(
#   # Email address associated with your ACLED account
#   email = Sys.getenv("ACLED_API_EMAIL"),
#   # Password associated with your ACLED account. If left blank, you will be prompted to enter interactively.
#   password = Sys.getenv("ACLED_API_PASSWORD"),
#   # Country of interest
#   country = "Argentina",
#   # Earliest date for requested events
#   start_date ="2022-01-01",
#   # Last date for requested events
#   end_date = "2022-12-31",
#   # Request 'inter codes' in numeric rather than text form
#   inter_numeric = TRUE
#   )

## ----eval = FALSE-------------------------------------------------------------
# new_data <- acled_update(acledR::acled_old_deletion_dummy,
#                          email = Sys.getenv("ACLED_API_EMAIL"),
#                          password = Sys.getenv("ACLED_API_PASSWORD"),
#                          inter_numeric = TRUE,
#                          prompts = FALSE)

## -----------------------------------------------------------------------------
long_data <- acled_transform_longer(acledR::acled_old_dummy, type = "full_actors")

head(long_data)

## -----------------------------------------------------------------------------
wide_data <- acled_transform_wider(long_data, type = "full_actors")

head(wide_data)

## -----------------------------------------------------------------------------
transformed_data <- acled_transform_interaction(acledR::acled_old_dummy)

# Note the inter1 and inter2 columns
head(transformed_data)

