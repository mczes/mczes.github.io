library(shiny)

shinyServer(function(input, output) {
eqDataSet <- read.csv("qualification_employment.csv", header=TRUE, sep=";")
  
  output$comparePlot <- renderPlot({
    SelectedYear <- input$year
    SelectedYearCompare <- input$yearCompare
    
    yearData <- subset(eqDataSet, Year==SelectedYear)
    yearDataCompare <- subset(eqDataSet, Year==SelectedYearCompare)
    
    avector <- as.vector(yearData, mode='numeric')
    avector <- avector[-1]
    
    compareVector <- as.vector(yearDataCompare, mode='numeric')
    compareVector <- compareVector[-1]
    compareMatrix <- matrix(c(avector,compareVector), nrow = 2, ncol = 3, byrow = TRUE)
    plotLegend = c(SelectedYear,SelectedYearCompare)
    
    barplot(compareMatrix, 
            main="",
            ylab="Employment in Thousands",
            xlab = "Degree of Qualification", 
            ylim=c(0,30000),
            beside = TRUE,
            col=colors()[c(15,80)],
            legend = plotLegend,
            names.arg=c("Vocational Training", "University Degree", "Without Vocational Training")
    )
  })
})
