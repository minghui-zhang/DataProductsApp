library(shiny)

shinyUI(fluidPage(
                 
  h1("Explore Sin and Cos Plots"),
  p("This app allows trigonometry students to interactively explore sin and cos plots."),
  p("Enter the following information in the panel below:"),
  tags$ul(
    tags$li("The range of x values for which to plot the sinusoid"), 
    tags$li("Whether you want sin or cos"), 
    tags$li("Phase in radians"),
    tags$li("Frequency")
  ),
  h5("The following equation is solved:"),
  h5("sin(frequency*x + phase) or cos(frequency*x + phase)"),

                 
                          
                          # side bar
                          sidebarLayout(
                            sidebarPanel(
                              
                              
                              sliderInput("xRange", "Enter x range:",
                                          min = 0, max = 10,
                                          value = c(0,10)),
                              
                              radioButtons("sin_or_cos", "Sin or Cos:",
                                           c("Sin" = "Sin",
                                             "Cos" = "Cos")),
                              
                              sliderInput("phase", "Enter phase in radians:",
                                          min = 0, max = 2*3.14,
                                          value = 0), 
                              
                              sliderInput("frequency", "Enter frequency:",
                                          min = 0, max = 10,
                                          value = 1)
                            ),
                            
                            # main bar
                            mainPanel(
                              plotOutput("sinPlot")
                            )
                            
                          ) # end sidebarLayout

                 

)
)