library(shiny)



shinyServer(function(input, output) {
  output$map <- renderPlotly({
    mapplot(input$year)
  })
  
  
  #initialize plot
  output$plot1 <- renderPlotly({
    didplot(input$loc)
  })
  
  
})
