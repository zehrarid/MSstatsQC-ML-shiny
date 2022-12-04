library(shinyBS)
library(shinyWidgets)
library(shiny)

source("panels/home-ui.R", local = TRUE)
source("panels/spc-ui.R", local = TRUE)
source("panels/ml-ui.R", local = TRUE)



ui = navbarPage(
  title = "MSstatsShiny",
  id = "tablist",
  #selected = currentTab,
  tabPanel("Homepage", icon = icon("home"), home),
  tabPanel("1. SPC",value = "SPC", icon = icon("send"), spc),
  tabPanel("2. Machine Learning", value = "DataProcessing", icon = icon("gears"), ml),
   
  inverse = T,
  collapsible = T,
  windowTitle = "MSstatsShiny"
)

shinyUI(ui)
