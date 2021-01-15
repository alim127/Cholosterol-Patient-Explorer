library(shiny)
library(datasets)

ui <- shinyUI(fluidPage(
  titlePanel("The Cholesterol of Heart Disease Patients"),
  

  sliderInput(inputId="lev",label = "Cholesterol Levels",min=126,max=564,value=126,step = 10,animate = animationOptions(interval=300,loop=TRUE)),
  

  mainPanel(plotOutput(outputId="cho",height=564),
  em("Any cholesterol over 200 is dangerous")
)
)
)
