shinyUI(
  pageWithSidebar(
    headerPanel("Predicted Baseball Winning Percentage and Wins"),
    sidebarPanel(
      numericInput('scored', 'Enter the number of runs that have been scored in all games',1,
                   min = 1, max = 1000, step = 1),
      numericInput('allowed', 'Enter the number of runs allowed in all games',1,
                   min = 11, max = 1000, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('The total number of runs scored you entered are'),
      verbatimTextOutput("inputValue1"),
      h4('The total number of runs allowed you entered are'),
      verbatimTextOutput("inputValue2"),
      h4('Which results in the predicted winning percentage of '),
      verbatimTextOutput("percent"),
      h4('Which results in the predicted number of wins over 162 games being '),
      verbatimTextOutput("wins")
    )
  )
)
