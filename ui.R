# ui.R

library(shiny)

shinyUI(fluidPage(
  titlePanel("Iris Key"),
  verticalLayout(
    wellPanel(
      sliderInput("Petal.Length", "Petal Length", min = 0, max = 10, value = 0),
      sliderInput("Petal.Width", "Petal Width", min = 0, max = 10, value = 0)
    ),
    h3("Predicted Species"),
    wellPanel(
      textOutput("Species")
    ),
    h3("Classification Tree"),
    plotOutput("Plot")
  )
))
