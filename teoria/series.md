---
title: "Tema 2.1 - Series numéricas"
author: "Juan Gabriel Gomila, Arnau Mir y Llorenç Valverde"
date: ''
output: 
  ioslides_presentation: 
    css: Mery_style.css
    fig_caption: yes
    keep_md: yes
    logo: Images/calculus.gif
    widescreen: yes
---



# Tema

## Series numéricas

Veremos en este apartado un tipo especial de sucesiones que nos permiten tratar infinitos términos cuya suma es finita. La suma de los términos de una progresión geométrica constituye uno de los ejemplos más conocidos de este tipo de sumas.

Recordemos que una progresión geométrica és una sucesión $\{a_n\}$ tal que el cociente entre un término y el anterior $\dfrac{a_{n+1}}{a_n}$ es constante, es decir una sucesión de la forma 

$$
a,ar,ar^2, \ldots, ar^n, \ldots
$$

## Series numéricas

Es relativamente sencillo calcular la suma de los $n$ primeros términos de este tipo de sucesiones, dado que  $S_n = a+ar+ar^2+ \ldots +ar^n$ y que $rS_n =   ar+ar^2+ \ldots +ar^n + ar^{n+1}$, por lo que
$$
(1-r)S_n = S_n-rS_n= a(1-r^{n+1})
$$
es decir 
$$
S_n = a \dfrac{1-r^{n+1}}{1-r}
$$
Si $|r|<1$, entonces $\lim r^{n+1} = 0$ y, por lo tanto
$$
a+ar+ar^2 \ldots + ar^n + \ldots = \lim_{n \rightarrow \infty} S_n = \dfrac{a}{1-r}
$$

## Series numèricas


