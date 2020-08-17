---
title: "Curso de cálculo"
author: "Juan Gabriel Gomila, Arnau Mir y Llorenç Valverde"
date: ""
#runtime: shiny
output: 
  ioslides_presentation: 
    css: ../teoria/Mery_style.css
    fig_caption: yes
    keep_md: yes
    logo: ../teoria/Images/calculus.gif
    widescreen: yes
    transition: slower
---




# Curso de cálculo

## ¿Qué vamos a aprender?

* Conocer y **manejar** el conjunto de los **números reales** $\mathbb{R}$.

## La recta real

```
## 
## Listening on http://127.0.0.1:6546
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-1-1.png)<!-- -->



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



## Conceptos que aprenderemos: continuidad

<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-10-1.png" style="display: block; margin: auto;" />

## Conceptos que aprenderemos: continuidad

```
## 
## Listening on http://127.0.0.1:5054
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-11-1.png)<!-- -->



## Conceptos que aprenderemos: derivabilidad
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-12-1.png" style="display: block; margin: auto;" />

## Conceptos que aprenderemos: derivabilidad

```
## 
## Listening on http://127.0.0.1:5603
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-13-1.png)<!-- -->


## Conceptos que aprenderemos: integral o área

<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-14-1.png" style="display: block; margin: auto;" />

## Conceptos que aprenderemos: integral o área

```
## 
## Listening on http://127.0.0.1:3388
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-15-1.png)<!-- -->


## Conceptos que aprenderemos: integral o área

```
## 
## Listening on http://127.0.0.1:5270
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-16-1.png)<!-- -->

## Conceptos que aprenderemos: longitud de una curva

```
## 
## Listening on http://127.0.0.1:5603
```

![](PresentacionCurso2_files/figure-html/unnamed-chunk-17-1.png)<!-- -->

## Ejemplos de funciones reales de variable real

* Función logística: $f(x)=\frac{1}{1+\mathrm{e}^{-x}}$:
\vspace*{-3cm}

<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-18-1.png" style="display: block; margin: auto;" />

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
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-19-1.png" style="display: block; margin: auto;" />

## Aproximación suave
Una aproximación suave de la función anterior es la función **softplus**: $f(x)=\log(1+\mathrm{e}^x)$:
\vspace{-2cm}
<img src="PresentacionCurso2_files/figure-html/unnamed-chunk-20-1.png" style="display: block; margin: auto;" />



## 

<div class="box">
**Esperemos que disfrutéis del curso**
</div>


