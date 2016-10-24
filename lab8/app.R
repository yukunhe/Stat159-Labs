library(shiny)
advertising = read.csv("~/Desktop/Stat159-Labs/lab8/Advertising.csv", header = T)

ui = fluidPage(
  selectInput("variable", "Choose an Advertising Channel:", 
              c("TV" = "TV", "Radio" = "Radio", "Newspaper" = "Newspaper")),
  plotOutput("scatterPlot")
)

server = function(input, output) {
  output$scatterPlot <- renderPlot({
    plot(Sales ~ advertising[, input$variable], data = advertising, 
         xlab = input$variable, main = paste('Sales vs ', input$variable))
    abline(lm(Sales ~ advertising[, input$variable], data = advertising), col = "red")
  })
}

shinyApp(ui = ui, server = server)



