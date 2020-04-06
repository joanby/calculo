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

Supondremos que son conocidos los conceptos de **función**, **rango** y **dominio**, así como los términos **variable independiente** y **dependiente**. Tambien suponemos que  son conocidas las funciones elementales como las polinómicas $f(x)= P_n(x) = a_nx^n+a_{n-1}x^{n-1}+ \cdots + a_1x+a_0$, la exponencial $f(x)=e^x$,  las trigonométricas $f(x)=\sin(x)$, $f(x)=\cos(x)$, $f(x) =\tan(x)$, entre otras. 

Uno de los principales objetivos del càlculo es el estudio de propiedades de las funciones. De hecho, como se mencionó, el cálculo diferencial trata del estudio de la medida del cambio, precisamente en relaciones que vienen expresadas como funciones, principalment como funciones $f:A\subset \mathbb{R} \rightarrow \mathbb{R}$, es decir, **funciones reales de variable real**

La primera cuestión que se aborda tiene que ver con los números reales, en particular cómo evaluar las funciones reales de variable real cuando la variable independiente es un número irracional. Nuevamente el concepto de límite viene a ayudar en la solución de esta cuestión.

## Límite de una función: Definición 1.

<l class="definition"> **Definición 1** </l>

Sea $f:A \subset \mathbb{R}$ una función definida sobre el conjunto $A \subset \mathbb{R}$ y sea $x_0$ un punto de acumulación de $A$. $L \in \mathbb{R}$ es el **límite de $f(x)$ cuando $x$ tiende a $x_0$** si para toda sucesión $\{x_n\}_{n \in \mathbb{N}}$ de puntos de $A$ tal que $\lim_{n \rightarrow \infty}x_n = x_0$ es $\lim_{n \rightarrow \infty}f(x_n)=L$.

Escribiremos, momentáneamente, $\lim^1_{x \rightarrow x_0}f(x)=L$, para indicar el límite de $f(x)$ cuando $x$ tiende a $x_0$, de acuerdo con esta definición.





## Límite de una función.Definición 2.

<l class="definition"> **Definición 2** </l>

Sea $f:A \subset \mathbb{R} \rightarrow \mathbb{R}$ una función definida sobre el conjunto $A \subset \mathbb{R}$ y sea $x_0$ un punto de acumulación de $A$. $L \in \mathbb{R}$ es el límite de $f(x)$ cuando $x$ tiende a $x_0$ si para todo $\epsilon >0$ existe un $\delta >0$ tal que siempre $0<|x-x_0|< \delta$, entonces es $|f(x)-L|<\epsilon$.

Escribiremos $\lim^*_{x \rightarrow x_0}f(x) = L$, para indicar que $L \in \mathbb{R}$ es el límite de $f(x)$ cuando $x$ tiende a $x_0$, de acuerdo con esta definición.


También se puede expresar el $\lim^*$ en términos de entornos: $\lim^*_{x \rightarrow x_0}f(x) = L$ si para todo entorno
abierto de $L$, $V_{\epsilon}(L)$, existe un entorno abierto de $x_0$, $V_{\delta} (x_0)$ tal que para todo $x \in V^*_{\delta} (x_0)$ es $f(x) \in V_{\epsilon}(L)$


## Las dos definiciones son equivalentes.

Sea $x_n$ una sucesión de puntos distintos de $x_0$, tal que $x_n \rightarrow x_0$.

Supongamos que para todo $\epsilon >0$ existe $\delta >0$ tal que si $|x - x_0|< \delta$, entonces $|f(x)-L|<\epsilon$. 

Dado que $\delta >0$, existe $n_0$ tal que para todo $n > n_0$ es $|x_n - x_0|<\delta$, por lo tanto será $|f(x_n) - L| < \epsilon$, para todo $n > n_0$, por lo que, efectivamente, $f(x_n) \rightarrow L$.

Para demostrar el recíproco, es decir que si $\lim^1_{x \rightarrow x_0} f(x) = L$ entonces $\lim^*_{x \rightarrow x_0}f(x) =L$, es conveniente observar que $\lim^*f(x) \neq L$ equivale a que exista $\epsilon >0$ tal que para todo $\delta >0$ existe $x_{\delta}$ tal que $|x_{\delta} -x_0| < \delta$ y $|f(x_{\delta}) - L|\geq \epsilon$, es decir que podemos encontrar puntos próximos a $x_0$ tales que su imagen por $f$ no se acerca a $L$.


## Las dos definiciones son equivalentes

Demostramos la otra implicación por contraposición, es decir usando la equivalencia $b \implies a \equiv \lnot a \implies \lnot b$. 

Suponemos, pues, que $\lim^*f(x) \neq L$, es decir que hay un $\epsilon > 0$ tal que para todo $\delta >0$ existe $x_{\delta}$ tal que $|x_{\delta} - x_0|<\delta$ y $|f(x_{\delta}) - L| \geq \epsilon$. 

Se trata de ver que hay una sucesión, $\{x_n\}$ que tiene límite  $x_0$ y que $f(x_n) \not\rightarrow L$. 

Consideremos ahora la sucesión de números positivos $\frac{1}{n}$, y los correspondientes $x_n$ tales que $|x_n-x_0|< \frac{1}{n}$, es $|f(x_n) -L | \geq \epsilon$, es decir $f(x_n) \not\rightarrow L$, en tanto que $x_n \rightarrow x_0$, por lo que tampoco es $\lim^1 f(x_n) = L$.

En lo sucesivo escribiremos $\lim_{x \rightarrow x_0}f(x)=L$ para indicar indistintamente que $\lim^1_{x \rightarrow x_0}f(x)=L$ y que $\lim^*_{x \rightarrow x_0}f(x)=L$.



