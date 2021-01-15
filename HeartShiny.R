library(shiny)
library(datasets)
library(rsconnect)

ui <- fluidPage(
  sliderInput(inputId="Choles",label = "Cholesterol Levels",value=0,min=0,max=564)
)
server<-shinyServer(function(input, output) {
  heart<-read.csv(data<-read.csv("./Data/heart.csv"))
  output$heart<-renderPlot({barplot(heart$chol,main="Cholesterol",xlab="x-axis",ylab="Chol")})
})
shinyApp(ui=ui,server=server)
rsconnect::deployApp('path/to/your/app')