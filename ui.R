
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Lipids Assessment"),
    
    sidebarPanel(
      numericInput('Cholestrol','cholestrol mg/dl', 130, min = 70, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Percent of Total Lipids'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Percent of Maximum Lipids '),
      verbatimTextOutput("prediction")
    )
  )
)
