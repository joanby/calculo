#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("Números racionales"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "x0",
                        label="valor de x:",
                        min = 0,
                        max = 10,
                        step = 1,
                        value = 0)
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(
            tabPanel("Naturales", plotOutput("n")),
            tabPanel("Enteros", plotOutput("e")),
            tabPanel("Racionales", plotOutput("q"))
          )
        )
        # mainPanel(
        #    plotOutput("q")
        #    plotOutput("n")
        # )
    )
)

# Define server logic required to draw a histogram


server <- function(input, output) {
  
  output$e <- renderPlot({
    # generate bins based on input$bins from ui.R
    # x0 <- seq(0,5,0.1)
    
    # draw the histogram with the specified number of bins
    xmin=-10
    xmax=10
    ymin=-0.5
    ymax=0.5
    tolx=0.01*(xmax-xmin)
    toly=0.05*(ymax-ymin)
    quantsx=10
    quantsy=2
    # f = function(x){sin(x)}
    plot(c(xmin-tolx,xmax+tolx,xmin-tolx,xmax+tolx),c(ymin-toly,ymin-toly,ymax+toly,ymax+toly),type="n",xlab="",ylab="",xaxt="n",yaxt="n",axes=FALSE)
    x=seq(from=0,to=input$x0,by=1)
    #points(x,f(x),type="l")
    # lines(c(0,0),c(ymin,ymax))
    lines(c(xmin,xmax),c(0,0))
    m=length(x)
    for (i in 1:m){
      points(x,rep(0,m),col="red",cex=2,pch=19)
      points(-x,rep(0,m),col="red",cex=2,pch=19)
      text(x[i],-2*toly,x[i])
      text(-x[i],-2*toly,-x[i])
    }
  })
  
  
  output$q <- renderPlot({
    # generate bins based on input$bins from ui.R
    # x0 <- seq(0,5,0.1)
    
    # draw the histogram with the specified number of bins
    xmin=-10
    xmax=10
    ymin=-0.5
    ymax=0.5
    tolx=0.01*(xmax-xmin)
    toly=0.05*(ymax-ymin)
    quantsx=10
    quantsy=2
    # f = function(x){sin(x)}
    plot(c(xmin-tolx,xmax+tolx,xmin-tolx,xmax+tolx),c(ymin-toly,ymin-toly,ymax+toly,ymax+toly),type="n",xlab="",ylab="",xaxt="n",yaxt="n",axes=FALSE)
    x=seq(from=0,to=input$x0,by=0.1)
    x2=seq(from=0,to=input$x0,by=1)
    #points(x,f(x),type="l")
    #lines(c(0,0),c(ymin,ymax))
    lines(c(xmin,xmax),c(0,0))
    m=length(x)
    m2=length(x2)
    for (i in 1:m){
      points(x,rep(0,m),col="red",cex=1,pch=19)
      points(-x,rep(0,m),col="red",cex=1,pch=19)
      }
    for (i in 1:m2){
      text(x2[i],-2*toly,x2[i])
      text(-x2[i],-2*toly,-x2[i])
    }
  })
  
  output$n <- renderPlot({
    # generate bins based on input$bins from ui.R
    # x0 <- seq(0,5,0.1)
    
    # draw the histogram with the specified number of bins
    xmin=0
    xmax=10
    ymin=-0.5
    ymax=0.5
    tolx=0.01*(xmax-xmin)
    toly=0.05*(ymax-ymin)
    quantsx=10
    quantsy=2
    # f = function(x){sin(x)}
    plot(c(xmin-tolx,xmax+tolx,xmin-tolx,xmax+tolx),c(ymin-toly,ymin-toly,ymax+toly,ymax+toly),type="n",xlab="",ylab="",xaxt="n",yaxt="n",axes=FALSE)
    x=seq(from=0,to=input$x0,by=1)
    #points(x,f(x),type="l")
    #lines(c(0,0),c(ymin,ymax))
    lines(c(xmin,xmax),c(0,0))
    m=length(x)
    for (i in 1:m){
      points(x,rep(0,m),col="red",cex=2,pch=19)
      text(x[i],-2*toly,x[i])
    }
  })
}

# Run the application 
shinyApp(ui = ui, server = server)
