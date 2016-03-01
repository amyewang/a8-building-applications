shinyServer(function(input, output) {
  
  # sources the summary.R file to use the data.frame summary_iris 
  source('summary.R')
  
  # renders the plotly graph
  output$bar <- renderPlotly({
    # creates a plotly bar graph with the species as the x axis, and the 
    # selected data from the radio buttons as y-axis
    # sets the marker color to the color selected from the select input
    plot_ly(summary_iris,
            x = Species,
            y = eval(parse(text = input$irisStats)),
            type = "bar",
            marker = list(color = toRGB(input$color)) ) %>%
      layout(yaxis = list(title = input$irisStats), title = paste(input$irisStats, "of Species of Iris"))
  })
})