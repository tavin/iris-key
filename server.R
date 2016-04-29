# server.R

library(shiny)
library(caret)
library(rpart)
library(rpart.plot)

set.seed(226837434)
fit <- train(Species ~ ., data = iris, method = 'rpart')
fig <- renderPlot({ prp(fit$finalModel) })

shinyServer(function(input, output) {
  output$Plot <- fig
  output$Species <- renderText({
    dpred <- data.frame(Sepal.Length = 0,
                        Sepal.Width = 0,
                        Petal.Length = input$Petal.Length,
                        Petal.Width = input$Petal.Width)
    as.character(predict(fit, dpred))
  })
})
