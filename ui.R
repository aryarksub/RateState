# Arya Kondur
# October 2021
# 
# User-interface definition for RateState.

library(shiny)

values <- state.name

ui <- fluidPage(
  
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "styles.css")
  ),
  
  # Application title
  titlePanel(
    h1(id = "app-title", "RateState: Twitter Sentiment Analysis for US States")
  ),
  
  sidebarLayout(
    sidebarPanel(
      h4(id = "sidebar-title", "Parameters for Analysis"),
      selectInput("state_choice", "Choose a state:", choices = values),
      numericInput("num_tweets", "Number of tweets:", 10, min = 10, max = 500),
      plotOutput("state_map"),
      width = 5
    ),
    mainPanel(
      h4(id = "main-title", "\nHistogram analysis"),
      textOutput("state_name"),
      textOutput("number_tweets"),
      width = 7
    )
  )
)
