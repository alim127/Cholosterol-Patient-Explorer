library(shiny)


shinyServer(function(input, output) {
  #reads data file
  read.csv(file="./Data/heart.csv",header = TRUE,sep="",quote ="\"")
  #plots the cholesterol of all the 
  output$cho<-renderPlot({plot(heart$chol[heart$chol<=input$lev],main="Cholesterol Levels in patients with heart disease",xlab="Patient",ylab="Cholesterol Levels",pch=17,col="navyblue")
  })
  })