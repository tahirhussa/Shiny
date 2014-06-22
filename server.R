#Cholesterol Assessment 
#Function calculates input against maximum total cholesterol
# Here is the function
#

CholestrolRisk <- function(Cholestrol) (Cholestrol / 200)*100

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Cholestrol})
    output$prediction <- renderPrint({CholestrolRisk(input$Cholestrol)})
  }
)
