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


 Si $\lim S_n = \infty$, la serie es  **divergente**  y se denota por
$\displaystyle{\sum_{n=1}^{\infty}a_n} = \infty$ 

Si la sucesión de sumas parciales no tiene límite, entonces la serie es **oscilante**

Una serie **absolutamente convergente** es aquella tal que la serie de valores absolutos  es convergente, i.e. si $\displaystyle{\sum_{n=1}^{\infty}|a_n| < \infty}$




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
De este resultado se deduce también que la convergencia de una serie no depende de un número finito de sus primeros términos.

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

## Propiedades de las series convergentes.

<l class="prop"> **Proposición** </l>

Sean $\sum a_n$ y $\sum b_n$ dos series convergentes (divergentes), entonces

1. La serie suma de las dos $\sum(a_n+b_n)$ es convergente (divergente).
2. Si $\lambda$ es un número real, entonces la serie $\sum \lambda a_n$ es convergente (divergente).

<div class="dem"> **Demostración**

1. Si $S_n = a_1 + \cdots+a_n$ y $T_n=b_1+ \cdots + b_n$ son las respectivas sumas parciales respectivas de las series $\sum a_n$ y $\sum b_n$,  entonces $S_n+T_n$ es la sucesión de las sumas parciales de la serie suma, dado que tanto $S_n$ como $T_n$ son convergentes, también lo será $S_n+T_n$ y, por la tanto la serie $\sum(a_n+b_n)$ es convergente.

2. Dado que $S_n$ és convergente, también lo será $\lambda S_n$, la sucesión de sumas parciales de $\sum \lambda a_n$.

</div>

Estas propiedades, en general, no son válidas para series oscilantes.



## Propiedades de las series convergentes.

<l class="prop"> **Proposición. (Propiedad asociativa)** 

En una serie convergente (divergente) se pueden sustituir varios términos consecutivos por su suma efectuada sin que varie el carácter de la serie.

<div class="dem"> **Demostración**

Si asociamos términos de la serie $a_1 + a_2+a_3 + \cdots + a_n+ \cdots$ de la forma $(a_1 + a_2+a_3 + \cdots + a_i)+(a_{i+1} + \cdots +a_j) + (a_{j+1}+ \cdots + a_k) \cdots$, entonces resulta que la sucesión de sumas parciales de la segunda está contenida en la primera, es decir,
$$
S'_1 = S_i; \quad S'_2=S_j; \quad S'_3=S_k
$$
y, por lo tanto si $S_n$ es convergente (divergente), también lo es $S'_n$.

</div>

La propiedad asociativa de la suma no es válida para series oscilantes



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

Una clase particularmente interesante de series son las de términos positivos, és decir aquellas series $\sum a_n$ tales que $a_n \geq 0$, para todo $n$. Para estas series tenemos el siguien resultado:

<l class="prop"> **Proposición**

Sea $\sum a_n$ es una serie de términos positivos  y $S_n= a_1+a_2+ \cdots + a_n$ su sucesión de sumas parciales.
Entonces $\sum a_n$ es convergente, si, y sólo si, $S_n$ es una sucesión acotada superiormente.

<div class="dem"> **Demostración**

Por ser $\sum a_n$ de términos positivos, la sucesión $S_n$ es creciente, es decir $S_n \leq S_{n+1}$, para todo $n$. Por el teorema de la convergencia monótona, $S_n$ es convergente si, y sólo sí, es una sucesión acotada.
</div>

Aplicaremos este resultado para establecer criterios de comparación para establecer la convergencias o divergencia de series de términos positivos.

## Series de términos positivos



## Criterio de comparación de primera especie.

<l class="prop"> **Proposición. (Criterio de comparación de primera especie)** </l>

Sean $\sum a_n$ y $\sum b_n$ dos series de términos positivos tales que $a_n \leq b_n$ para todo $n$. Entonces,
si $\sum b_n$ es convergente, $\sum a_n$ es convergente. Por otra parte, si $\sum a_n$ es divergente, entonces $\sum b_n$ es divergente.

<div class="dem"> **Demostración**
Si $S_n$ indica la sucesión de sumas parciales de $\sum a_n$ y $T_n$ la de la serie $\sum b_n$, entonces por ser la dos de términos positivos y $a_n \leq b_n$, resultará que $S_n \leq T_n$ y, por lo tanto si $T_n$ está acotada superiormente, es decir si $\sum b_n$ es convergente, también estará acotada superiormente la sucesión $S_n$ y, es decir, $\sum a_n$ es convergente. Argumentos similares sirven para demostrar que si $\sum a_n$ es divergente, entonces también lo es $\sum b_n$.

</div>

<div class="example"> **Ejemplo**

Sea $x>0$, la serie $\sum_{n=1}^{\infty}  \dfrac{1}{x+n}$ es divergente puesto que existe $p \in \mathbb{N}$ tal que $p>x$, por lo que los términos de dicha serie estarán acotados inferiormente por los de la serie $\sum_{n=1}^{\infty} \dfrac{1}{p+n}$ es decir, por los términos de la serie armónica a partir del que ocupa el lugar $p$ y, por lo tanto, es divergente.


</div>





## La serie armónica generalizada

La serie armónica generalizada es la serie generada por la sucesión $\dfrac{1}{n^{\alpha}}$, es decir, la serie $\displaystyle{\sum_{n=1}^{\infty}\frac{1}{n^{\alpha}}}$

<l class="prop"> **Proposición** </l>

La serie armónica generalizada es divergente si $\alpha \leq 1$ y es convergente si $\alpha >1$.

<div class="dem"> **Demostración**

Si $\alpha \leq 1$ entonces dado que  $\dfrac{1}{n^{\alpha}} \geq \dfrac{1}{n}$, por el primer criterio de comparación, se trata de una serie divergente, puesto que como ya hemos demostrado, la serie armónica es divergente.
 
</div>


## La serie armónica generalizada

<div class="dem"> **Demostración (Continuación)**

Sea ahora  $\alpha >1$. Trataremos de acotar los términos de la sucesión que genera la serie armónica generalizada por los términos de una sucesión que genere una serie convergente, en particular por una serie geométrica de razón $\dfrac{1}{2^{\alpha-1}}$. Para cualquier $k \in \mathbb{N}$ existe un $p \in \mathbb{N}$ tal que $2^p \leq k < 2^{p+1}$, por lo que será $\dfrac{1}{2^{p+1}} < \dfrac{1}{k} \leq \dfrac{1}{2^p}$, por lo tanto si sustituimos los términos de la sucesión armónica generalizada $\dfrac{1}{k}$ por el correspondiente $\dfrac{1}{2^p}$, tal que $\dfrac{1}{k} \leq \dfrac{1}{2^p}$, entonces tendremos la serie
$$
1+\left(\dfrac{1}{2^{\alpha}}+\dfrac{1}{2^{\alpha}}\right)+\left(\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}\right)+ \left(\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}\right) + \ldots
$$
es decir, la serie geométrica de razón $\dfrac{1}{2^{\alpha -1}}$:
$$
1+\dfrac{1}{2^{\alpha -1}}+\dfrac{1}{4^{\alpha -1}}+\dfrac{1}{8^{\alpha -1}}+ \ldots 
$$
por lo tanto, al estar acotada superiormente por una serie convergente, la serie armónica generalizada es convergente, si $\alpha > 1$.
