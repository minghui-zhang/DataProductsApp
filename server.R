shinyServer(
  function(input, output) {
  

    output$sinPlot <- renderPlot({
      x1 <- input$xRange[1]
      x2 <- input$xRange[2]
      x <- seq(x1, x2, by = 0.01)
      y <- if (input$sin_or_cos == "Sin") {sin(input$frequency*x + input$phase)} else {cos(input$frequency*x + input$phase)}
      plot(x, y, type = "l", main = paste0(input$sin_or_cos, "(x)"), ylab = input$sin_or_cos)
    })
  }
)

#shinyApp(ui = ui, server = server)