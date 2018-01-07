library(shiny)

eqDataSet <- read.csv("qualification_employment.csv", header=TRUE, sep=";")

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Employment by Qualification Degree in Germany"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       selectInput("year", "Year:", 
                   eqDataSet$Year),
       selectInput("yearCompare", "Select to compare:", 
                   eqDataSet$Year),
       hr(),
       helpText("Data from www.govdata.de.")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("comparePlot")
    )
  )
))
