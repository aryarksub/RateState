# Arya Kondur
# October 2021
#
# Server logic for RateState.

library(shiny)
library(rtweet)

source("init_api.R")
source("util.R")

server <- function(input, output) {
  api_token <- get_api_token()
  
  hashtag <- reactive(
    {paste0('#', gsub("[[:blank:]]", "", input$state_choice))}
  )
  
  filled_map <- reactive(
    {get_map_state_color(input$state_choice)}
  )
  
  output$state_map <- renderPlot({ filled_map() })
  
  reactive(
    {tweets <- search_tweets(hashtag, n = input$num_tweets, token = api_token)}
  )
  

  output$state_name <- renderText(
    {paste0("You have selected: ", hashtag())}
  )
  
  output$number_tweets <- renderText(
    {paste0("There are ", input$num_tweets, " tweets to show")}
  )

}
