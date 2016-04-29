# ui.R

library(shiny)

plotStyle <- "background: no-repeat center
              url('https://upload.wikimedia.org/wikipedia/commons/7/78/24px-spinner-0645ad.gif')"

shinyUI(fluidPage(
  titlePanel("Iris Key"),
  sidebarLayout(
    mainPanel(
      wellPanel(
        sliderInput("Petal.Length", "Petal Length", min=0, max=5, step=0.1, value=0),
        sliderInput("Petal.Width", "Petal Width", min=0, max=5, step=0.1, value=0)
      ),
      h3("Predicted Species"),
      wellPanel(
        textOutput("Species")
      ),
      h3("Classification Tree"),
      div(class="well", style=plotStyle, plotOutput("Plot"))
    ),
    sidebarPanel(
      p("This is a demonstration of a simple classification tree trained on the ",
        a(href="http://www.inside-r.org/r-doc/datasets/iris", "iris data set"), "."),
      p("Choose the petal length and width using the sliders. The predicted species is
         shown underneath. A plot of the classification tree is also shown as a guide.")
    )
  )
))
