library(shiny)
library(plotly)
library(dplyr)

# sources the summary.R file to use the data.frame summary_iris 
source('summary.R')

shinyUI(fluidPage(
  # creates the title panel, titled Iris 
  titlePanel("Iris"),
  
  # creates sidebar titled Sidebar
  sidebarPanel("Sidebar",
    # creates radio buttons that change the data shown on the y-axis, automatically shows 
    # the average sepal length at first
    radioButtons("irisStats", label = ("What data do you want to show?"),
                 choices = list("Average Sepal Length" = "average_sepal_length", 
                                "Average Sepal Width" =  "average_sepal_width", 
                                "Average Petal Length" = "average_petal_length", 
                                "Average Petal Width" = "average_petal_width"),
                 selected = 'average_sepal_length'),
    
    # creates a select input that changes the color of the graph, automatically shows green at first
    selectInput("color", label = "Color",
                 choices = list("Green" = 'green', "Blue" = 'blue'), 
                 selected = 'green')
  ),

  # creates the main panel that shows the bar graph
  mainPanel("Graph",
    plotlyOutput("bar")
  )
))