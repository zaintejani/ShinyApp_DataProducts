### SHINY UI ###
library(shiny); library(datasets); data(mtcars)

shinyUI(pageWithSidebar(
  headerPanel("Motor Trend Drag Race Selector"),
  sidebarPanel(
    h3("Please select variables"),
    p("We're going drag racing. Pick variables to see how they affect the quarter mile (qsec) time."),
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Gears" = "gear",
                     "Transmission"="am",
                     "Weight"="wt",
                     "Fuel Economy"="mpg")),
    submitButton("Submit")
    ),
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("qsecPlot"),
    
    h4("Wow. Such Shiny. Very output")
    )
  )
  )