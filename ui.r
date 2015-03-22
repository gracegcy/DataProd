library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MPG Distribution by Number of Cylinders"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      radioButtons("radio", label = h3("Choose Number of Cylinders"),
                   choices = list("4" = 4, "6" = 6,
                                  "8" = 8),selected = 4)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
