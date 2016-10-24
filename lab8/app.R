library(shiny)
advertising = read.csv("~/Desktop/Stat159-Labs/lab8/Advertising.csv", header = T)

server = function(input, output) {
  
}

shinyApp(ui = ui, server = server)

# plot scatter plots of sales vs different advertising channels
plot(Sales ~ TV, data = advertising, main = 'Sales vs TV')
plot(Sales ~ Radio, data = advertising, main = 'Sales vs Radio')
plot(Sales ~ Newspaper, data = advertising, main = 'Sales vs Newspaper')

