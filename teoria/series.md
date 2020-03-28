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

Veremos en este apartado un tipo especial de sucesiones que nos permiten tratar sumas de infinitos términos cuya suma es finita. 

La suma de los términos de una progresión geométrica constituye uno de los ejemplos más conocidos de este tipo de sumas.

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
S_n = a \dfrac{\quad \, 1-r^{n+1}}{1-r}
$$
Si $|r|<1$, entonces $\lim r^{n+1} = 0$ y, por lo tanto
$$
a+ar+ar^2 \ldots + ar^n + \ldots = \lim_{n \rightarrow \infty} S_n = \dfrac{a}{1-r}
$$

## Series numèricas

<l class="definition"> **Definición** </l>

Llamaremos **serie** generada por una sucesión de números reales $\{a_n \}_{n \in \mathbb{N}}$ a la sucesión 
$$
S_1 = a_1, \; S_2=a_1+a_2,  \ldots, S_n=a_1+a_2+ \ldots +a_n
$$
 $\{S_n \}_{n \in \mathbb{N}}$ recibe el nombre de sucesión de las **sumas parciales** de la serie.

$\displaystyle{\sum_{n=1}^{\infty}a_n}$ y también $\displaystyle{\sum a_n}$ son las notaciones que se usan habitualmente para denotar la serie generada por la sucesión $a_n$. 

## Series numéricas: Convergencia

<l class="definition"> **Definición** </l>

Una serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es **convergente** si su sucesión de sumas parciales $S_n$ tiene límite, en cuyo caso, dicho límite recibe el nombre de **suma** de la serie.


Una serie **divergente** es aquella para la que $S_n$ no tiene límite finito y se denota por $\displaystyle{\sum_{n=1}^{\infty}a_n} = \infty$ 

Una serie **absolutamente convergente** es aquella tal que la serie de valores absolutos $\displaystyle{\sum_{n=1}^{\infty}|a_n| < \infty}$ es convergente.




## Series numéricas: Ejemplos. 

<div class="example"> **Ejemplos**

Ejemplo 1: La **serie geomètrica**, generada por una progresión geomètrica $a,ar,ar^2, \ldots, ar^n, \ldots$, 
$$
\sum_{n=1}^{\infty} ar^n
$$
que ya hemos visto que es convergente si $|r|<1$.



Ejemplo 2: La **serie armónica**, $\displaystyle{\sum_{n=1}^{\infty}}\dfrac{1}{n}$, generada por la sucesión $\left\{\dfrac{1}{n} \right\}_{n \in \mathbb{N}}$.

Se trata de una serie divergente, como se verá más adelante. 

Ejemplo 3. La  **serie armónica generalizada**, $\displaystyle{\sum_{n=1}^{\infty}}\dfrac{1}{n^\alpha}$, generada por la sucesión $\left\{\dfrac{1}{n^\alpha} \right\}_{n \in \mathbb{N}}$.

Má adelante veremos que esta serie es convergente si $\alpha >1$
</div>

## Series convergentes.

<l class="prop"> **Proposición (Criterio de Cauchy para series numéricas)** </l>

La serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente si para todo $\epsilon > 0$ existe $n_0 \in \mathbb{N}$ tal que para todo $n \geq n_0$ y todo $k \in \mathbb{N}$ es 
$$
|a_{n+1}+ a_{n+2}+ \cdots + a_{n+k}|<\epsilon
$$

<div class="dem"> **Demostración** 

Que la serie sea convergente quiere decir que la sucesión de umas parciales $S_n$ es convergente y, por lotanto, verifica el criterio de Cauchy para sucesiones, es decir, para todo $\epsilon >0$, existe $n_0$ tal que para todo $n,m > n_0$ es $|S_m-S_n| < \epsilon$. Ahora, podemos suponer que $m>n$, por lo que $m = n+k$, para algún $k \in \mathbb{N}$. En consecuencia:
$$
|S_m-S_n| = |a_{n+1}+a_{n+2}+ \cdots + a_m| < \epsilon
$$

</div>

## Corolario: La serie armònica es divergente

<l class="prop"> **Corolario** </l>

La serie armónica es divergente.

<div class="dem"> **Demostración**

Será suficiente de mostrar que existe un $\epsilon > 0$,tal que para todo $n_0 \in \mathbb{N}$ existen $m>n>n_0$ tales que 
$$
|S_m-S_n| = |a_{n+1}+a_{n+2}+ \cdots + a_m| \geq \epsilon
$$
Sea $0<\epsilon < \dfrac{1}{2}$, dado un $n_0 \in \mathbb{N}$ cualquiera, consideremos Un $n >n_0$ y $m=2n$. Tenemos
$$
a_{n+1}+a_{n+2}+ \cdots + a_m = \dfrac{1}{n+1} + \dfrac{1}{n+2} +\cdots +\dfrac{1}{2n} \geq \dfrac{1}{2n}+\cdots +\dfrac{1}{2n} = \dfrac{n}{2n}=\dfrac{1}{2}
$$


## Condición necesaria

<l class="prop"> **Corolario (Condición suficiente de convergencia)** </l>

Si la serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente, entonces $\lim_{n \rightarrow \infty}  a_n = 0$

<div class="dem"> **Demostración**

Es suficiente considerar la condición de Cauchy con $m=n+1$, en este caso resulta que para todo $\epsilon >0$ existe $n_0$ tal que para todo $m,n \geq n_0$ es $|S_m -S_n| < \epsilon$, pero si $m=n+1$ entonces $|S_{n+1}-S_n| = |a_{n+1}| < \epsilon$, es decir que $\lim_{n \rightarrow \infty} a_n = 0$.

</div>

Es importante tener en cuenta que esta és una condición **necesaria** pero no suficiente, como evidencia el caso de la seria armónica, que es divergente aunque $\lim_{n \rightarrow \infty}  \dfrac{1}{n}=0$


## Convergencia condicional

<l class="prop"> **Proposición** </l>

Si $\displaystyle{\sum_{n=1}^{\infty}|a_n|}$ es convergente entonces $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente.

<div class="dem"> **Demostración**

Dado que si $m>n$, entonces 
$$
|a_{n+1}+ a_{n+2}+ \cdots + a_{m}| \leq |a_{n+1}|+ |a_{n+2}|+ \cdots + |a_{m}|
$$
entonces si $\displaystyle{\sum_{n=1}^{\infty}|a_n|} < \infty$, para todo $\epsilon >0$ existe $n_0$ tal que para todo $n,m \in \mathbb{N}$ tal que $m \geq n \geq n_0$, entonces $|a_{n+1}|+ |a_{n+2}|+ \cdots + |a_{m}| < \epsilon$ y, por lo tanto será $|a_{n+1}+ a_{n+2}+ \cdots + a_{m}| < \epsilon$.

</div>

## Convergencia condicional

El recíproco no es cierto: una seria puede ser convergente sin ser absolutamente convergente. 
Es el caso de la serie $\displaystyle{\sum \dfrac{(-1)^n}{n}}$ que, como demostraremos más adelante, es convergente, en tanto que la serie de valores absolutos  es la serie armónica que ya hemos visto que era divergente.  

Una serie convergente que no sea absolutamente convergente recibe le nombre de **condicionalmente convergente**


## Series de términos positivos


## Primer criterio de comparación






## La serie armónica generalizada

La serie armónica generalizada es la serie generada por la sucesión $\left\{ \dfrac{1}{n^{\alpha}}\right\}$, es decir $\displaystyle{\sum_{n=1}^{\infty}\frac{1}{n^{\alpha}}}$

<l class="prop"> **Proposición** </l>

La serie armónica generalizada es divergente si $\alpha \leq 1$ y es convergente si $\alpha >1$.

<div class="dem"> **Demostración**

Si $\alpha \leq 1$ entonces dado que  $\dfrac{1}{n^{\alpha}} \geq \dfrac{1}{n}$, por el primer criterio de comparación, se trata de una serie divergente, puesto que como ya hemos demostrado, la serie armónica es divergente.
 
</div>


## La serie armónica generalizada

<div class="dem"> **Demostración (Continuación)**

Sea ahora  $\alpha >1$. 

Trataremos de acotar los términos de la sucesión que genera la serie armónica generalizada por los términos de una sucesión que genere una serie convergente, en particular por una serie geométrica de razón $\dfrac{1}{2^{\alpha-1}}$. Para cualquier $k \in \mathbb{N}$ existe un $p \in \mathbb{N}$ tal que $2^p \leq k < 2^{p+1}$, por lo que será $\dfrac{1}{2^{p+1}} < \dfrac{1}{k} \leq \dfrac{1}{2^p}$, por lo tanto si sustituimos los términos de la sucesión armónica generalizada $\dfrac{1}{k}$ por el correspondiente $\dfrac{1}{2^p}$, tal que $\dfrac{1}{k} \leq \dfrac{1}{2^p}$, entonces tendremos la serie
$$
1+\dfrac{1}{2^{\alpha}}+\dfrac{1}{2^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+ \dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}} + \ldots
$$
es decir, la serie geométrica de razón $\dfrac{1}{2^{\alpha -1}}$:
$$
1+\dfrac{1}{2^{\alpha -1}}+\dfrac{1}{4^{\alpha -1}}+\dfrac{1}{8^{\alpha -1}}+ \ldots 
$$
por lo tanto, al estar acotada superiormente por una serie convergente, la serie armónica generalizada es convergente, si $\alpha > 1$.
