library(shinyBS)
library(shinyWidgets)
library(shiny)

source("helperScripts/input_section_ui.R")
source("panels/home-ui.R", local = TRUE)
source("panels/spc-ui.R", local = TRUE)
source("panels/ml-ui.R", local = TRUE)





ui = navbarPage(
  title = "MSstats-ML-Shiny",
  id = "tablist",
  #selected = currentTab,
  tabPanel("Homepage", home),
  tabPanel("1. SPC",value = "SPC", spc_ui),
  tabPanel("2. Machine Learning",  icon = icon("gears"), ml),
  tabPanel("3. Anomaly Detection"),
   
  inverse = T,
  collapsible = T,
  windowTitle = "MSstatsShiny"
)

shinyUI(ui)
