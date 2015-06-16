percent <- function(scored,allowed) scored*scored / ((scored*scored)+(allowed*allowed))
wins <- function(scored,allowed) scored*scored / ((scored*scored)+(allowed*allowed))*162

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$scored})
    output$percent <- renderPrint({percent(input$scored, input$allowed)})
    output$wins <- renderPrint({wins(input$scored, input$allowed)})
    }
  )