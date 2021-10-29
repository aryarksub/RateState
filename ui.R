# Arya Kondur
# October 2021
# 
# User-interface definition for RateState.

library(shiny)

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
      h4(id = "sidebar-title", "Choose a state to analyze:"),
      selectInput("state_choices", "", choices = list('A', 'B'))
    ),
    mainPanel(
      h4(id = "main-title", "\nHistogram analysis"),
      textOutput("state_name")
    )
  )
)
