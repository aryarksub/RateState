# Arya Kondur
# October 2021
#
# Server logic for RateState.

library(shiny)

server <- function(input, output) {
  
  output$state_name <- renderText(
    {paste0("You have selected: ", input$state_choices)}
  )

}
