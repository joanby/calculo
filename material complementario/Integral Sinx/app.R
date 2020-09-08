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
    titlePanel("Integración definida dinámica"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            sliderInput(inputId = "x0",
                        label="valor de x:",
                        min = 1,
                        max = 6,
                        step = 0.1,
                        value = 2)
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("grafico")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$grafico <- renderPlot({
        # generate bins based on input$bins from ui.R
        # x0 <- seq(0,5,0.1)

        # draw the histogram with the specified number of bins
        xmin=0
        xmax=36
        ymin=-1
        ymax=1
        tolx=0.01*(xmax-xmin)
        toly=0.05*(ymax-ymin)
        quantsx=36
        quantsy=4
        f = function(x){sin(x)}
        plot(c(xmin-tolx,xmax+tolx,xmin-tolx,xmax+tolx),c(ymin-toly,ymin-toly,ymax+toly,ymax+toly),type="n",xlab="",ylab="",xaxt="n",yaxt="n",axes=FALSE)
        x=seq(from=input$x0,to=input$x0^2,by=0.01)
        #points(x,f(x),type="l")
        lines(c(0,0),c(ymin,ymax))
        lines(c(xmin,xmax),c(0,0))
        text(xmax-tolx,-15*tolx,"x")
        text(toly/10,ymax+toly/2,"y")
        for (i in 0:(quantsx)){
            if(xmin+((xmax-xmin)/quantsx)*i != 0){
                lines(rep(xmin+((xmax-xmin)/quantsx)*i,2),c(-0.5*toly,+0.5*toly))
                    text(xmin+((xmax-xmin)/quantsx)*i,-1*toly,xmin+((xmax-xmin)/quantsx)*i,cex=0.75)
            }
        }
        
        for (i in 0:(quantsy)){
            lines(c(-tolx/2,tolx/2),ymin+rep(((ymax-ymin)/quantsy)*i,2))
             text(-1.5*tolx,ymin+((ymax-ymin)/quantsy)*i,ymin+((ymax-ymin)/quantsy)*i,cex=0.75)
        }
        lines(x,f(x))
        for (j in 1:length(x)){
            lines(c(x[j],x[j]),c(0,f(x[j])),col="green")
        }
        text(x[1],-3*toly,"x",cex=2,col="red")
        text(x[length(x)],-3*toly,expression(x^2),cex=2,col="red")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
