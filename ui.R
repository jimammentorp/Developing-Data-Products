shinyUI(
  pageWithSidebar(
    headerPanel("Predicted Winning Percentage and Wins"),
    sidebarPanel(
      numericInput('scored', 'Runs Scored',1),
      numericInput('allowed', 'Runs Allowed',1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which results in the predicted winning percentage of '),
      verbatimTextOutput("percent"),
      h4('Which results in the predicted number of wins being '),
      verbatimTextOutput("wins")
    )
  )
)