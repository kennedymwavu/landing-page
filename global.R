library(shiny)
library(shinydashboard)
library(rversions) # to get R versions
library(shinyjqui) # for jquery animations in UI

# Get all r versions, omit the ones which didn't have nicknames:
versions <- r_versions() |> na.omit()

# we'll have a `selectInput()` on the UI whose choices will be:
choices <- c(
  "An Earlier Version", 
  paste(versions$version, versions$nickname)
)
