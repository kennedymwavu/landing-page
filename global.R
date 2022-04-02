library(shiny)
library(shinydashboard)
library(rversions)
library(shinyjqui)

# Get all r versions, omit the ones which didn't have nicknames:
versions <- r_versions() |> na.omit()

choices <- c(
  "An Earlier Version", 
  paste(versions$version, versions$nickname)
)
