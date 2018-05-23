library(shiny)
shinyServer(function(input, output) {
  output$map <- renderPlotly({
    mapplot(input$year)
  })
})
