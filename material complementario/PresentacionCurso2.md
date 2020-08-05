---
title: "Curso de cálculo"
author: "Juan Gabriel Gomila, Arnau Mir y Llorenç Valverde"
date: ""
output: 
  ioslides_presentation: 
    css: ../teoria/Mery_style.css
    fig_caption: yes
    keep_md: yes
    logo: ../teoria/Images/calculus.gif
    widescreen: yes
---




# Curso de cálculo

## ¿Qué vamos a aprender?

* Conocer y **manejar** el conjunto de los **números reales** $\mathbb{R}$.

## La recta real

```r
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
                        max = 20,
                        step = 1,
                        value = 0)
        ),

        # Show a plot of the generated distribution
        mainPanel(
          tabsetPanel(
            tabPanel("Naturales", plotOutput("n")),
            tabPanel("Enteros", plotOutput("e")),
            tabPanel("Racionales", plotOutput("q")),
            tabPanel("Racionales en el intervalo [0,1]", plotOutput("q2"))
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
  
  
  output$q2 <- renderPlot({
    # generate bins based on input$bins from ui.R
    # x0 <- seq(0,5,0.1)
    
    # draw the histogram with the specified number of bins
    xmin=0
    xmax=1
    ymin=-0.5
    ymax=0.5
    tolx=0.01*(xmax-xmin)
    toly=0.05*(ymax-ymin)
    quantsx=10
    quantsy=2
    # f = function(x){sin(x)}
    plot(c(xmin-tolx,xmax+tolx,xmin-tolx,xmax+tolx),c(ymin-toly,ymin-toly,ymax+toly,ymax+toly),type="n",xlab="",ylab="",xaxt="n",yaxt="n",axes=FALSE)
    x=list(0)
    for (j in 1:input$x0){
      x[[j+1]]=seq(from=0,to=1,by=1/j)
      m=length(x[[j+1]])
      for (i in 1:m){
        points(x[[j+1]],rep(0,m),col="red",cex=1,pch=19)
        text(x[[j+1]][i],-2*toly,round((i-1)/(m-1),3),srt=270,cex=0.75)
      }
    }
    #points(x,f(x),type="l")
    #lines(c(0,0),c(ymin,ymax))
    lines(c(xmin,xmax),c(0,0))
    # m=length(x)
    # for (i in 1:m){
    #   points(x,rep(0,m),col="red",cex=1,pch=19)
    #   text(x[i],-2*toly,round((i-1)/(m-1),2))
    # }

  })
  
  
}

# Run the application 
shinyApp(ui = ui, server = server)
```

```
## PhantomJS not found. You can install it with webshot::install_phantomjs(). If it is installed, please make sure the phantomjs executable can be found via the PATH variable.
```

<!--html_preserve--><div style="width: 100% ; height: 400px ; text-align: center; box-sizing: border-box; -moz-box-sizing: border-box; -webkit-box-sizing: border-box;" class="muted well">Shiny applications not supported in static R Markdown documents</div><!--/html_preserve-->



## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-2-1.png" style="display: block; margin: auto;" />

## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-3-1.png" style="display: block; margin: auto;" />

## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-4-1.png" style="display: block; margin: auto;" />


## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-5-1.png" style="display: block; margin: auto;" />

## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-6-1.png" style="display: block; margin: auto;" />

## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-7-1.png" style="display: block; margin: auto;" />


## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-8-1.png" style="display: block; margin: auto;" />

## La recta real
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-9-1.png" style="display: block; margin: auto;" />

## ¿Qué vamos a aprender?

* Trabajar con funciones **reales** de variable **real**:
$$
f: D\subseteq \mathbb{R}\longrightarrow\mathbb{R},
$$
donde $D$ es el llamado **dominio** de la función.

## Ejemplos de funciones reales de variable real

* Función logística: $f(x)=\frac{1}{1+\mathrm{e}^{-x}}$:
\vspace{-2cm}

<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-10-1.png" style="display: block; margin: auto;" />

## Función logística
Usada en:

* Redes neuronales,
* Matemáticas en biología,
* Química,
* Demografía,
* Economía,
* Psicología,
* Estadística,
* etc.

## Funciones de activación en redes neuronales
En el ámbito de las redes neuronales, las **funciones de activación** o **rectificador** se definen como:

* $f(x)=\max\{0,x\}$, donde $x>0$ es la entrada de la neurona. Se usa como alternativa a la función logística:
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-11-1.png" style="display: block; margin: auto;" />

## Aproximación suave
Una aproximación suave de la función anterior es la función **softplus**: $f(x)=\log(1+\mathrm{e}^x)$:
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-12-1.png" style="display: block; margin: auto;" />


## Conceptos que aprenderemos:

* Continuidad
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-13-1.png" style="display: block; margin: auto;" />


## Conceptos que aprenderemos:

* Derivabilidad
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-14-1.png" style="display: block; margin: auto;" />

## Conceptos que aprenderemos:

* Integral de una función o **"área"**
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-15-1.png" style="display: block; margin: auto;" />

## 

\begin{center}
{\Huge Esperemos que disfrutéis del curso.}
\end{center}
