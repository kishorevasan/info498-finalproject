library(shiny)
library(plotly)

shinyUI(fluidPage(
  theme = shinytheme("yeti"),
  navbarPage("INF0 498",
    tabPanel("Introduction",
      titlePanel("Test 1")
    ),
    tabPanel("Change Over The Years",
             titlePanel("Test 2")
    ),
    tabPanel("Comparison Between States",
             titlePanel("Test 3")
    ),
    tabPanel("Report",
             titlePanel("Test 4")
    )
  )
))
