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
             titlePanel("Test 3"),
             h4("Our project focusses on analyzing the effects of Climate Change on Mental Health. 
                  The first step to analyzing the effect is to acknowledge that there is a problem of Mental Health in the country. 
                The data was collected from Center For Disease Control as part of their annual Behavioral Risk Survey(Link Below).
                In the visualization below you can see how each state compares to the nationwide averages of Number of Mentally Unhealthy Days for each Gender. 
                "),
             br(),
             sidebarLayout(
               sidebarPanel(
                 selectInput("loc", "State", choices=locations)
               )  , mainPanel(
                 h2("Number of Mentally Unhealthy Days"),
                 plotlyOutput("plot1"),
                 h5(".")
               )
             ),
             p("Data Sources:"),
             a("Behavioral Risk Factor Data: Health-Related Quality of Life (HRQOL)", href = "https://catalog.data.gov/dataset/behavioral-risk-factor-data-health-related-quality-of-life-hrqol-76ea6")
             )
    
    ),
    tabPanel("Report",
             titlePanel("Test 4")
    )
  )
)
