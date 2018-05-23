library(shiny)
library(plotly)

shinyUI(fluidPage(
  theme = shinytheme("yeti"),
  navbarPage("INF0 498",
    tabPanel("Introduction",
      titlePanel("Effect of Climate Change on Mental Health"),
      sliderInput("year", "Timeline",
        min = 1995,
        max = 2010,
        sep = "",
        value = 1995,
        width = '800px',
        animate = animationOptions(interval = 500, loop = FALSE))
             
    ),
    mainPanel(
      plotlyOutput("map")
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
