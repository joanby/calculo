---
title: "Tema 3 - Límites y continuidad"
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

## Funciones reales de variable real.

En lo que sigue, supondremos que son conocidos los conceptos de **función**, **rango** y **dominio**, así como las funciones exponencial $f(x)=e^x$, las polinómicas $f(x)= P_n(x) = a_nx^n+a_{n-1}x^{n-1}+ \cdots + a_1x+a_0$,  las trigonométricas $f(x)=\sin(x)$, $f(x)=\cos(x)$, $f(x) =\tan(x)$. Tambien suponemos que los términos **variable independiente** y **dependiente** son conocidos.

Uno de los principales objetivos del càlculo es el estudio de propiedades de las funciones. De hecho, como se mencionó, el cálculo diferencial trata del estudio de la medida del cambio, precisamente en relaciones que vienen expresadas como funciones, principalment como funciones $f:A\subset \mathbb{R} \rightarrow \mathbb{R}$, es decir, **funciones reales de variable real**

La primera cuestión que se aborda tiene que ver con los números reales, en particular cómo evaluar las funciones reales de variable real cuando la variable independiente es un número irracional. Nuevamente el concepto de límite viene a ayudar en la solución de esta cuestión.

## Límite de una función: Definición 1.

<l class="definition"> **Definición** </l>

Sea $f:A \subset \mathbb{R}$ una función definida sobre el conjunto $A \subset \mathbb{R}$ y sea $x_0$ un punto de acumulación de $A$. $L \in \mathbb{R}$ es el **límite de $f(x)$ cuando $x$ tiende a $x_0$** si para toda sucesión $\{x_n\}_{n \in \mathbb{N}}$ de puntos de $A$ tal que $\lim_{n \rightarrow \infty}x_n = x_0$ es $\lim_{n \rightarrow \infty}f(x_n)=L$.




## Límite de una función.

<l class="definition"> **Definición 1** </l>

Sea $f:A \subset \mathbb{R}$ una función definida sobre el conjunto $A \subset \mathbb{R}$ y sea $x_0$ un punto de acumulación de $A$. $L \in \mathbb{R}$ es el **límite de $f(x)$ cuando $x$ tiende a $x_0$** si para todo $\epsilon >0$ existe un $\delta >0$ tal que siempre $0<|x-x_0|< \delta$, entonces es $|f(x)-L|<\epsilon$.

Escribiremos $\lim_{x \rightarrow x_0}f(x) = L$, para indicar que $L \in \mathbb{R}$ es el **límite de $f(x)$ cuando $x$ tiende a $x_0$**

También se puede expresar es este concepto en términos de entornos: $\lim_{x \rightarrow x_0}f(x) = L$ si para todo entorno
abierto de $L$, $V_{\epsilon}(L)$, existe un entorno abierto de $x_0$, $V_{\delta} (x_0)$ tal que para todo $x \in V^*_{\delta} (x_0)$ es $f(x) \in V{\epsilon}(L)$


## Las dos definiciones son equivalentes.

