library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # By taking the input number of cylinders
  # The plot shows the distribution plot of MPG values
  
  data(mtcars)
  attach(mtcars)
  
  output$distPlot <- renderPlot({
    x  <- mtcars[mtcars$cyl == input$radio, 1]  # car MPG data
    
    # draw the histogram with the specified number of bins
    hist(x, xlab = "Miles/(US) gallon", breaks=5, main= "distribution of MPG values")
  })
  
})