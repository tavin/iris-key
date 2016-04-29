# ui.R

library(shiny)

shinyUI(fluidPage(
  titlePanel("Iris Key"),
  sidebarLayout(
    mainPanel(
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
    ),
    sidebarPanel(
      p("This is a demonstration of a simple classification tree trained on the ",
        a(href="http://www.inside-r.org/r-doc/datasets/iris", "iris data set"), "."),
      p("Choose the petal length and width using the sliders. The predicted species is
         shown underneath. A plot of the classification tree is also shown as a guide.")
    )
  )
))
