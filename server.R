### SHINY SERVER ###
library(shiny); library(datasets); data(mtcars)

shinyServer(
 function(input, output){
   formulaText <- reactive({
     paste("qsec ~", input$variable)
   })
   
   output$caption <- renderText({
     formulaText()
   })
  
   output$qsecPlot <- renderPlot({
     plot(as.formula(formulaText()), main="Need for Speed", ylab="Quarter mile time", data = mtcars)
     text(mtcars$qsec, labels=rownames(mtcars))
   })
 }
 
)