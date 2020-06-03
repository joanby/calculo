---
title: "Tema 3 - Series numéricas"
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



# Introducción

## Series numéricas

Veremos en este apartado un tipo especial de sucesiones que nos permiten tratar con infinitos sumandos cuya suma es finita. 

La suma de los términos de una progresión geométrica constituye uno de los ejemplos más conocidos de este tipo de sumas.

Recordemos que una progresión geométrica és una sucesión $\{a_n\}$ tal que el cociente entre un término y el anterior $\dfrac{a_{n+1}}{a_n}=r$ es constante, es decir una sucesión de la forma 

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
Si $|r|<1$, entonces $\lim_{n \rightarrow \infty} r^{n+1} = 0$ y, por lo tanto
$$
a+ar+ar^2 \ldots + ar^n + \ldots = \lim_{n \rightarrow \infty} S_n = \dfrac{a}{1-r}
$$

## Series numéricas


En el siguiente link, `Wolfram Alpha` nos da información sobre la serie geométrica, en particular, el valor de su suma:
<l class="center">
[![](Images/wolfram.png)](https://www.wolframalpha.com/input/?i=sum+a*r%5En+from+n%3D0+to+infinity)
</l>


## Series numèricas

<l class="definition"> **Definición. Serie numérica** </l>

Llamaremos **serie** generada por una sucesión de números reales $\{a_n \}_{n \in \mathbb{N}}$ a la sucesión 
$$
S_1 = a_1, \; S_2=a_1+a_2,  \ldots, S_n=a_1+a_2+ \ldots +a_n
$$
 Cada uno de los términos de $\{S_n \}_{n \in \mathbb{N}}$ recibe el nombre **suma parcial** de la serie.

$\displaystyle{\sum_{n=1}^{\infty}a_n}$,  $\sum_{n \geq 1} a_n$ y también $\displaystyle{\sum a_n}$ son las notaciones que se usan habitualmente para denotar tanto la **serie generada** por la sucesión $a_n$ como su **límite**. 

## Series numéricas: Convergencia

<l class="definition"> **Definición. Convergencia de una serie** </l>

Una serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es **convergente** si su sucesión de sumas parciales $S_n$ tiene límite, en cuyo caso, dicho límite recibe el nombre de **suma** de la serie.


 Si $\lim_{n \rightarrow \infty} S_n = \infty$, la serie es  **divergente**  y se denota por
$\displaystyle{\sum_{n=1}^{\infty}a_n} = \infty$ 

Si la sucesión de sumas parciales no tiene límite, entonces la serie es **oscilante.**

Una serie **absolutamente convergente** es aquella tal que la serie de valores absolutos  es convergente, i.e. si $\displaystyle{\sum_{n=1}^{\infty}|a_n| < \infty}$




## Series numéricas: Ejemplos

<div class="example"> **Ejemplos**

**Ejemplo 1**: La **serie geomètrica**, generada por una progresión geomètrica $a,ar,ar^2, \ldots, ar^n, \ldots$, 
$$
\sum_{n=1}^{\infty} ar^n
$$
que ya hemos visto que es convergente si $|r|<1$.



**Ejemplo 2**: La **serie armónica**, $\displaystyle{\sum_{n=1}^{\infty}}\dfrac{1}{n}$, generada por la sucesión $\left\{\dfrac{1}{n} \right\}_{n \in \mathbb{N}}$.

Se trata de una serie divergente, como se verá más adelante. 

**Ejemplo 3**. La  **serie armónica generalizada**, $\displaystyle{\sum_{n=1}^{\infty}}\dfrac{1}{n^\alpha}$, generada por la sucesión $\left\{\dfrac{1}{n^\alpha} \right\}_{n \in \mathbb{N}}$.

Más adelante veremos que esta serie es convergente si $\alpha >1$.
</div>

## Series convergentes.

<l class="prop"> **Proposición. Criterio de Cauchy para series numéricas.** </l>

La serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente si para todo $\epsilon > 0$ existe $n_0 \in \mathbb{N}$ tal que para todo $n \geq n_0$ y todo $k \in \mathbb{N}$ es 
$$
|a_{n+1}+ a_{n+2}+ \cdots + a_{n+k}|<\epsilon.
$$

## Criterio de Cauchy para series numéricas

<div class="dem"> **Demostración** 

Que la serie sea convergente quiere decir que la sucesión de sumas parciales $S_n$ es convergente y, por lo tanto, verifica el criterio de Cauchy para sucesiones, es decir, para todo $\epsilon >0$, existe $n_0$ tal que para todo $n,m > n_0$ es $|S_m-S_n| < \epsilon$. Ahora, podemos suponer que $m>n$, por lo que $m = n+k$, para algún $k \in \mathbb{N}$. En consecuencia:
$$
|S_m-S_n| = |a_{n+1}+a_{n+2}+ \cdots + a_m| < \epsilon.
$$
</div>


<l class="observ"> **Observación** </l>

De este resultado se deduce también que la convergencia de una serie no depende de un número finito de sus primeros términos.



## Corolario: La serie armònica es divergente

<l class="prop"> **Corolario** </l>

La serie armónica es divergente.

<div class="dem"> **Demostración**

Será suficiente de mostrar que existe un $\epsilon > 0$, tal que para todo $n_0 \in \mathbb{N}$ existen $m>n>n_0$ tales que 
$$
|S_m-S_n| = |a_{n+1}+a_{n+2}+ \cdots + a_m| \geq \epsilon.
$$
Sea $0<\epsilon < \dfrac{1}{2}$, dado un $n_0 \in \mathbb{N}$ cualquiera, consideremos un $n >n_0$ y $m=2n$. Tenemos
$$
a_{n+1}+a_{n+2}+ \cdots + a_m = \dfrac{1}{n+1} + \dfrac{1}{n+2} +\cdots +\dfrac{1}{2n} \geq \dfrac{1}{2n}+\cdots +\dfrac{1}{2n} = \dfrac{n}{2n}=\dfrac{1}{2}.
$$
</div>

## Condición necesaria

<l class="prop"> **Corolario. Condición necesaria de convergencia.** </l>

Si la serie $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente, entonces $\displaystyle{\lim_{n \rightarrow \infty}  a_n = 0}$.

<div class="dem"> **Demostración**

Es suficiente considerar la condición de Cauchy con $m=n+1$, en este caso resulta que para todo $\epsilon >0$ existe $n_0$ tal que para todo $m,n \geq n_0$ es $|S_m -S_n| < \epsilon$, pero si $m=n+1$ entonces $|S_{n+1}-S_n| = |a_{n+1}| < \epsilon$, es decir que $\lim_{n \rightarrow \infty} a_n = 0$.

</div>

<l class="observ"> **Observación** </l>
Es importante tener en cuenta que esta es una condición **necesaria** pero no suficiente, como evidencia el caso de la serie armónica, que es divergente aunque $\lim_{n \rightarrow \infty}  \dfrac{1}{n}=0$.

## Propiedades de las series convergentes.

<l class="prop">**Proposición: Suma de series**</l>

Sean $\sum a_n$ y $\sum b_n$ dos series convergentes (divergentes), entonces

1. La serie suma de las dos $\sum(a_n+b_n)$ es convergente (divergente).
2. Si $\lambda \neq 0$ es un número real, entonces la serie $\sum \lambda a_n$ es convergente (divergente).


## Propiedades de las series convergentes

<div class="dem"> **Demostración**

1. Si $S_n = a_1 + \cdots+a_n$ y $T_n=b_1+ \cdots + b_n$ son las respectivas sumas parciales respectivas de las series $\sum a_n$ y $\sum b_n$,  entonces $S_n+T_n$ es la sucesión de las sumas parciales de la serie suma, dado que tanto $S_n$ como $T_n$ son convergentes, también lo será $S_n+T_n$ y, por la tanto la serie $\sum(a_n+b_n)$ es convergente.

2. Dado que $S_n$ és convergente, también lo será $\lambda S_n$, la sucesión de sumas parciales de $\sum \lambda a_n$.

</div>

<l class="observ"> **Observación** </l>

Estas propiedades, en general, no son válidas para series oscilantes.




## Propiedades de las series convergentes

<l class="prop"> **Proposición. Propiedad asociativa** 

En una serie convergente (divergente) se pueden sustituir varios términos consecutivos por su suma efectuada sin que varie el carácter de la serie.

<div class="dem"> **Demostración**

Si asociamos términos de la serie $a_1 + a_2+a_3 + \cdots + a_n+ \cdots$ de la forma $(a_1 + a_2+a_3 + \cdots + a_i)+(a_{i+1} + \cdots +a_j) + (a_{j+1}+ \cdots + a_k) \cdots$, entonces resulta que la sucesión de sumas parciales de la nueva serie,$S'_{i}$, está contenida en la primera, es decir,
$$
S'_1 = S_i; \quad S'_2=S_j; \quad S'_3=S_k
$$
dado que $a'_1=a_1 + a_2+a_3 + \cdots + a_i$, $a'_2 = a_{i+1} + \cdots +a_j$, etcétera.

Por lo tanto si $S_n$ es convergente (divergente), también lo es $S'_n$.

</div>

<l class="observ"> **Observación** </l>

La propiedad asociativa de la suma no es válida para series oscilantes.



# Series de términos positivos

## Series de términos positivos

Una clase particularmente interesante de series son las de términos positivos, es decir aquellas series $\sum a_n$ tales que $a_n \geq 0$, para todo $n$. Para estas series tenemos el  resultado siguiente.

## Series de términos positivos

<l class="prop"> **Proposición: Condición necesaria y suficiente de convergencia**

Sea $\sum a_n$ es una serie de términos positivos  y $S_n= a_1+a_2+ \cdots + a_n$ su sucesión de sumas parciales.
Entonces $\sum a_n$ es convergente, si, y sólo si, $S_n$ es una sucesión acotada superiormente.

<div class="dem"> **Demostración**

Por ser $\sum a_n$ de términos positivos, la sucesión $S_n$ es creciente, es decir $S_n \leq S_{n+1}$, para todo $n$. Por el teorema de la convergencia monótona, $S_n$ es convergente si, y sólo sí, es una sucesión acotada superiormente.
</div>

Aplicaremos este resultado para establecer criterios de comparación para determinar la convergencia o divergencia de series de términos positivos.


## Criterio de comparación de primera especie

<l class="prop"> **Proposición. Criterio de comparación de primera especie** </l>

Sean $\sum a_n$ y $\sum b_n$ dos series de términos positivos tales que $a_n \leq b_n$ para todo $n$. Entonces, si $\sum b_n$ es convergente, $\sum a_n$ es convergente y si $\sum a_n$ es divergente, entonces $\sum b_n$ es divergente.

<div class="dem"> **Demostración**

Si $S_n$ indica la sucesión de sumas parciales de $\sum a_n$ y $T_n$ la de la serie $\sum b_n$, entonces por ser las dos de términos positivos y $a_n \leq b_n$, resultará que $S_n \leq T_n$ y, por lo tanto si $T_n$ está acotada superiormente, es decir si $\sum b_n$ es convergente, también estará acotada superiormente la sucesión $S_n$ y, es decir, $\sum a_n$ es convergente. 

Argumentos similares sirven para demostrar que si $\sum a_n$ es divergente, entonces también lo es $\sum b_n$.

</div>

## Criterio de comparación de primera especie

<div class="example"> **Ejemplo**

Sea $x>0$, la serie $\sum_{n=1}^{\infty}  \dfrac{1}{x+n}$ es divergente puesto que existe $p \in \mathbb{N}$ tal que $p>x$, por lo que los términos de dicha serie estarán acotados inferiormente por los de la serie $\sum_{n=1}^{\infty} \dfrac{1}{p+n}$ es decir, por los términos de la serie armónica a partir del que ocupa el lugar $p$ y, por lo tanto, es divergente.


</div>



## La serie armónica generalizada

<l class="def"> **Definición. La serie armónica generalizada.** </l>

La serie armónica generalizada es la serie generada por la sucesión $\dfrac{1}{n^{\alpha}}$, donde $\alpha \in \mathbb{R}$, es decir, la serie $\displaystyle{\sum_{n=1}^{\infty}\frac{1}{n^{\alpha}}}$.

<l class="prop"> **Proposición** </l>

La serie armónica generalizada es divergente si $\alpha \leq 1$ y es convergente si $\alpha >1$.

<div class="dem"> **Demostración**

Si $\alpha \leq 1$ entonces dado que  $\dfrac{1}{n^{\alpha}} \geq \dfrac{1}{n}$, por el primer criterio de comparación, se trata de una serie divergente, puesto que como ya hemos demostrado, la serie armónica es divergente.
 
</div>


## La serie armónica generalizada

<div class="dem">

Sea ahora  $\alpha >1$. Trataremos de acotar los términos de la sucesión que genera la serie armónica generalizada por los términos de una sucesión que genere una serie convergente, en particular por una serie geométrica de razón $\dfrac{1}{2^{\alpha-1}} <1$. Para cualquier $k >1$ existe un $p \in \mathbb{N}$ tal que $2^p \leq k < 2^{p+1}$, por lo que será $\dfrac{1}{2^{p+1}} < \dfrac{1}{k} \leq \dfrac{1}{2^p}$, por lo tanto si sustituimos los términos de la sucesión armónica generalizada $\dfrac{1}{k}$ por el correspondiente $\dfrac{1}{2^p}$, tal que $\dfrac{1}{k} \leq \dfrac{1}{2^p}$, entonces tendremos la serie
$$
1+\left(\dfrac{1}{2^{\alpha}}+\dfrac{1}{2^{\alpha}}\right)+\left(\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}+\dfrac{1}{4^{\alpha}}\right)+ \left(\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}+\dfrac{1}{8^{\alpha}}\right) + \ldots
$$
es decir, la serie geométrica de razón $\dfrac{1}{2^{\alpha -1}}$:
$$
1+\dfrac{1}{2^{\alpha -1}}+\dfrac{1}{4^{\alpha -1}}+\dfrac{1}{8^{\alpha -1}}+ \ldots 
$$
por lo tanto, al estar acotada superiormente por una serie convergente, la serie armónica generalizada es convergente, si $\alpha > 1$.

</div>

## La serie armónica generalizada
En el siguiente link, `Wolfram Alpha` nos da información sobre la serie armónica generalizada:
<l class="center">
[![](Images/wolfram.png)](https://www.wolframalpha.com/input/?i=sum+1%2Fn%5Ealpha+from+n%3D1+to+infinity)
</l>

Como se puede observar, nos dice que si $\alpha >1$, la serie es convergente, de hecho, nos dice si $\mathrm{Re}(\alpha)>1$ ya que trata el valor $\alpha$ como un [número complejo](https://es.wikipedia.org/wiki/N%C3%BAmero_complejo) y $\mathrm{Re}(\alpha)>1$ significa la parte real del mismo.

Relaciona la serie anterior con la famosa [Función zeta de Riemann](https://es.wikipedia.org/wiki/Funci%C3%B3n_zeta_de_Riemann) relacionada con la distribución de los **números primos**.

## Corolario del criterio de comparación

<l class="prop"> **Corolario.**

Sean $\sum a_n$ y $\sum b_n$ dos series de términos positivos, entonces 

1. Si para todo $n \geq n_0$ es $\dfrac{a_n}{b_n} \leq \lambda$, donde $\lambda$ es un número real positivo y si $\sum b_n$ es convergente, entonces $\sum a_n$ es convergente.
2. Si para todo $n \geq n_0$ es $\dfrac{a_n}{b_n} \geq \lambda$, donde $\lambda$ es un número real positivo y $\sum b_n$ es divergente, entonces $\sum a_n$ es divergente.


## Corolario del criterio de comparación

<div class="dem"> **Demostración.**

1. Al ser $a_n \leq \lambda b_n$ y ser $\sum  \lambda b_n$ convergente, resultará, por el criterio de comparación, que $\sum a_n$ es convergente.

2. Análogamente, dado que $\sum b_n$ es divergente, también lo será $\sum  \lambda b_n$, por lo que los téminos de $\sum a_n$ estan minorados por los de una serie divergente y, por lo tanto, también será divergente.

</div>

## Criterio de comparación de segunda especie

<l class="prop"> **Proposición** </l>

Sean $\sum a_n$ y $\sum b_n$ dos series de términos positivos,

1. Si para todo $n \geq n_0$ es $\dfrac{a_{n+1}}{a_n} \leq \dfrac{b_{n+1}}{b_n}$ y $\sum b_n$ es convergente, entonces $\sum a_n$ es convergente.

2. Si para todo $n \geq n_0$ es $\dfrac{a_{n+1}}{a_n} \geq \dfrac{b_{n+1}}{b_n}$ y $\sum b_n$ es divergente, entonces $\sum a_n$ es divergente.

## Criterio de comparación de segunda especie

<div class="dem"> **Demostración**

En primer lugar veamos que si $\dfrac{a_{n+1}}{a_n} \leq \dfrac{b_{n+1}}{b_n}$, entonces $a_{n_0 + p} \leq \dfrac{a_{n_0}}{b_{n_0}}b_{n_0 + p}$. 

En efecto:
$$
\dfrac{a_{n_0+1}}{a_{n_0}}  \leq  \dfrac{b_{n_0+1}}{b_{n_0}}
$$
$$
\dfrac{a_{n_0+2}}{a_{n_0+1}}  \leq \dfrac{b_{n_0+2}}{b_{n_0+1}}
$$
$$
\ldots \quad \ldots 
$$
$$
\dfrac{a_{n_0+(p-1)}}{a_{n_0+(p-2)}}  \leq \dfrac{b_{n_0+(p-1)}}{b_{n_0+(p-2)}}
$$
$$
\dfrac{a_{n_0+p}}{a_{n_0+(p-1)}}  \leq \dfrac{b_{n_0+p}}{b_{n_0+(p-1)}}
$$
</div>

## Criterio de comparación de segunda especie

<div class="dem"> 


Multiplicando miembro a miembro estas desigualdades, obtenemos el resultado esperado, es decir que $a_{n_0 + p} \leq \dfrac{a_{n_0}}{b_{n_0}}b_{n_0 + p}$

Por lo tanto, tenemos $\dfrac{a_n}{b_n} \leq \lambda$ con $\lambda = \dfrac{a_{n_0}}{b_{n_0}}$ y, de acuerdo con el lema anterior, tenemos que  si $\sum b_n$ es convergente, también lo será $\sum a_n$.

Razonamientos análogos permiten demostrar el segundo punto.
</div>



## Criterios clásicos de convergencia para series de términos positivos

Los criterios de comparación que acabamos de ver, usados con las series armónicas y geométricas, se convierten en potentes instrumentos para determinar la convergencia de series de términos positivos. Las proposiciones que siguen son ejemplos de esta afirmación.

<l class="prop"> **Proposición. Criterio de Pringsheim**

Sea $\sum a_n$ una serie de términos positivos. 

1. Si existe el $\lim n^{\alpha} a_n$, para un $\alpha >1$, entonces la serie es convergente. 

2. Si existe el $\lim n \cdot a_n$ y es estrictamente positivo, entonces la serie diverge.

## Criterios clásicos

<div class="dem"> **Demostración**

1. Que existe el $\lim n^{\alpha} a_n$ quiere decir que la sucesión $n^{\alpha} a_n$ está acotada por un número positivo $M$, es decir que $a_n \leq M \cdot \dfrac{1}{n^{\alpha}}$, por lo que, en virtud del corolario anterior, la  serie $\sum a_n$ es convergente por estar acotada por una armónica con $\alpha >1$.

2. Si el $\lim n \cdot a_n$ existe y es positivo, podemos determinar una constante positiva $M$ tal que $na_n>M$ para todo $n>n_0$ y, por lo tanto, $a_n$ está minorada por la sucesión $\left\{\dfrac{1}{n}\right\}$ que genera una serie divergente.

(Determinación de M: Sea $L = \lim n\cdot a_n$, dado que $L>0$, existe un $n_0$ tal que para todo $n >n_0$, es $L- n \cdot a_n <\dfrac{L}{2}$, por lo que $n \cdot a_n > \dfrac{L}{2}=M$)

</div>

## Criterios clásicos

<div class="example"> **Ejemplo**

 La serie $\sum \dfrac{\sqrt[3]{n}}{\sqrt{n^3-n+1}}$ es convergente, puesto que la diferencia de grados entre el denominador y el numerador  es $\dfrac{3}{2} - \dfrac{1}{3} = \dfrac{7}{6}$, por lo que $\lim \left(n^{\frac{7}{6}} \cdot \dfrac{\sqrt[3]{n}}{\sqrt{n^3-n+1}}\right) = 1$, y con $\dfrac{7}{6} >1$.

</div>

## Criterios clásicos: Criterio de de la raíz

<l class="prop"> **Proposición. Criterio de la raíz.** </l>

Sea $\sum a_n$ una sucesión de términos positivos tal que $\lim \sqrt[n]{a_n} = \lambda$. Entonces

1. Si $\lambda < 1$, la serie es convergente.

2. Si $\lambda > 1$ la serie es divergente.

3. Si $\lambda =1$, el criterio no decide.

<div class="dem"> **Demostración**

1. Dado que $\lambda <1$, tenemos que es posible tomar un $\epsilon>0$ tal que  $\epsilon < 1- \lambda$, entonces existe un $n_0$ tal que $\sqrt[n]{a_n} - \lambda < \epsilon$, es decir, que $a_n <(\epsilon + \lambda)^n$, dado que $\epsilon + \lambda <1$ los términos de $a_n$ estan mayorados por una serie geométrica de razón menor que 1 y, por lo tanto, será convergente.

2. Un razonamiento similar, permite ver que, en este caso, los términos de $a_n$ estan minorados por los de una divergente.

</div>

## Criterio de la raiz: Ejemplos.

<div class="example">
**Ejemplo 1**. La serie $\sum \left( \dfrac{n+1}{3n-1} \right)^{2n-1}$ es convergente, puesto que 
$$
\lim \sqrt[n]{\left(\dfrac{n+1}{3n-1}\right)^{2n-1}}  = \lim \left(\dfrac{n+1}{3n-1}\right)^{\dfrac{2n-1}{n}} = \left(\dfrac{1}{3}\right)^2 =\dfrac{1}{9} <1
$$

**Ejemplo 2**. La serie $\sum \left( \dfrac{an+1}{an} \right)^{n^2}$ es convergente si $a<0$, puesto que 
$$
\lim \sqrt[n]{\left(\dfrac{an+1}{an}\right)^{n^2}}  = \lim \left(\dfrac{an+1}{an}\right)^n = e^{\lim n\left( \dfrac{an+1}{an} -1 \right)} = e^{\frac{1}{a}} 
$$
y $e^{\frac{1}{a}}<1$ si, y sólo si, $a<0$

</div>

## Criterio de la raiz: Ejemplos

<div class="example">

**Ejemplo 3**. Determinar el carácter de la serie $\sum \left(a+\dfrac{1}{n}\right)^n$, donde $a$ es un número real positivo.

Aplicamos el criterio de la raiz:
$$
\lim \sqrt[n]{\left(a+\dfrac{1}{n}\right)^n}= \lim a+\dfrac{1}{n} = a
$$
por lo tanto, si $a<1$ la serie es convergente y si $a>1$ es divergente. Si $a=1$ el criterio no decide, pero en este caso tenemos que 
$$
\lim\left(1+\dfrac{1}{n}\right)^n = e \neq 0
$$
y, por la condicición necesaria de convergencia, la serie es divergente.


## Criterios clásicos: Criterio de d'Alembert

<l class="prop"> **Proposición. Criterio de d'Alembert (o del cociente).** </l>

Sea $\sum a_n$ una sucesión de términos positivos tal que $\lim \dfrac{a_{n+1}}{a_n} = \lambda$. Entonces

1. Si $\lambda < 1$, la serie es convergente.

2. Si $\lambda > 1$ la serie es divergente.

3. Si $\lambda =1$, el criterio no decide.

## Criterios clásicos: Criterio de d'Alembert

<div class="dem"> **Demostración**

1. Supongamos que $\lambda <1$, sea $0 <\epsilon <1- \lambda$, entonces $M=\lambda + \epsilon < 1$ y existe $n_0$ tal que para todo $n>n_0$ es $\dfrac{a_{n+1}}{a_n} - \lambda < \epsilon$, es decir $\dfrac{a_{n+1}}{a_n} <M =\dfrac{M^{n+1}}{M^n}$ y, de acuerdo con el criterio de comparación de segunda especie, dado que $\sum M^n$ és una serie geométrica de razón menor que $1$, la serie dada es convergente.

2. Razonamientos similares permiten demostrar que si $\lambda >1$ la serie es divergente.

</div>

## Ejemplos

<div class="example"> **Ejemplos**

**Ejemplo 1**. La serie $\sum \dfrac{n!}{n^n}$ es convergente, puesto que
$$
\lim \dfrac{a_{n+1}}{a_n} = \lim \dfrac{(n+1)! \cdot n^n}{(n+1)^{n+1}\cdot n!} = \lim \left( \dfrac{n}{n+1}\right)^n = \dfrac{1}{e} < 1.
$$

**Ejemplo 2**. Este criterio no permite determinar la convergencia o divergencia de la serie de término general
$$
a_n= \dfrac{n!}{(a+1)(a+2) \cdots (a+n)}
$$
donde $a$ es un número real positivo. En efecto
$$
\lim \dfrac{a_{n+1}}{a_n} = \lim \dfrac{(n+1)! \cdot(a+1)(a+2) \cdots (a+n)}{n! \cdot (a+1)(a+2) \cdots (a+(n+1))}= \lim \dfrac{n+1}{a+n+1}=1.
$$


## Más ejemplos.

<div class="example"> **Ejemplo (La sucesión de recíprocos de la sucesión de Fibonacci).**

**Ejemplo 3**. La serie, $\sum b_n$ generada por la sucesión de recíprocos de la serie de Fibonacci es convergente. 

Sea $a_n$ la sucesión de Fibonacci, es decir $a_1=a_0=1$, $a_{n+1}=a_n+a_{n-1}$, entonces $b_n= \dfrac{1}{a_n}$. Ahora 
$$
\dfrac{b_{n+1}}{b_n}= \dfrac{a_n}{a_{n+1}}= \dfrac{a_{n-1}+a_{n-2}}{a_{n}+a_{n-1}}
$$
es decir, $\dfrac{b_{n+1}}{b_n}$ está entre $\dfrac{a_{n-1}}{a_n}$ y $\dfrac{a_{n-2}}{a_{n-1}}$. Las dos primeras fracciones de este tipo son $\dfrac{1}{2}$ y $\dfrac{2}{3}$, por lo que todos los cocientes $\dfrac{b_{n+1}}{b_n}$ estan entre estas dos fracciones, es decir $\dfrac{1}{2}< \dfrac{b_{n+1}}{b_n}<\dfrac{2}{3}<1$,
por lo que 
$$
\lim_{n \rightarrow \infty} \dfrac{b_{n+1}}{b_n} \leq  \dfrac{2}{3}<1
$$
y, de acuerdo con el criterio de d'Alembert la serie es convergente.

</div>

## Más ejemplos.

<div class="example">
El gráfico de los recíprocos de la serie de Fibonacci se puede observar en el gráfico siguiente:
<div class="center">
![](03Series_files/figure-html/unnamed-chunk-1-1.png)<!-- -->
</div>

</div>


## Más ejemplos
.
<div class="example">
El gráfico de las sumas parciales $S_n=\sum_{k=0}^n \frac{1}{a_k}$ generada por los recíprocos de la serie de Fibonacci se puede observar en el gráfico siguiente:

<div class="center">
![](03Series_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

</div>
</div>

## Más ejemplos.
<div class="example">
En el siguiente link, `Wolfram Alpha` nos calcula aproximadamente la suma anterior 
$$
\sum_{k=0}^\infty \frac{1}{a_k}
$$
<l class="center">
[![](Images/wolfram.png)](https://www.wolframalpha.com/input/?i=Sum%5B1%2FFibonacci%5Bn%5D%2C+%7Bn%2C+1%2C+Infinity%7D%5D)
</l>

</div>

## Criterios clásicos. Criterio de Raabe </l>

<l class="prop"> **Proposición. Criterio de Raabe.** </l>

Sea $\sum a_n$ una sucesión de términos positivos tal que $\lim n \cdot \left(1 -\dfrac{a_{n+1}}{a_n}\right) = \lambda$. Entonces

1. Si $\lambda < 1$, la serie es divergente.

2. Si $\lambda > 1$ la serie es convergente.

3. Si $\lambda =1$, el criterio no decide.

Este criterio se usa cuando el de la raiz o el de d'Alembert no deciden, es decir, cuando el correspondiente límite es 1.

## Demostración del criterio de Raabe

<div class="dem"> **Demostración**

 Supongamos $\lambda >1$, entonces $\epsilon= \dfrac{\lambda -1}{2}>0$ por lo que existe $n_0$ tal que para todo $n>n_0$ es 
$$
-\epsilon < \dfrac{n \cdot a_n -n \cdot a_{n+1}}{a_n} - \lambda < \epsilon
$$
es decir que, $\dfrac{n \cdot a_n -n \cdot a_{n+1}}{a_n} > \lambda - \epsilon = 1 + \epsilon$. En definitiva, para todo $n  >  n_0$ es $(n-1)a_n -na_{n+1} > a_n \epsilon$.

Para simplificar, podemos prescindir ahora de los $n_0$ primeros términos. Sumamos hasta $n$ las desigualdades anteriores, para obtener $a_1 -na_{n+1} \geq \epsilon S_{n}$, es decir que las sumas parciales estan acotadas por $\dfrac{a_1}{\epsilon}$, puesto que
$$
S_{n} < \dfrac{a_1-na_{n+1}}{\epsilon}< \dfrac{a_1}{\epsilon}
$$
Por lo que la serie será convergente.

 Razonamientos similares sirven para demostrar el criterio cuando $\lambda < 1$.
</div>

## Ejemplo

<div class="example"> **Ejemplo**

Hemos visto que el criterio de d'Alembert no servia para determinar la convergencia de la serie $a_n= \dfrac{n!}{(a+1)(a+2) \cdots (a+n)}$, puesto que el $\lim \dfrac{a_{n+1}}{a_n} = \lim \dfrac{n+1}{a+n+1}=1$. Veamos si el criterio de Raabe aporta més información:
$$
\lim n \cdot \left(1 - \dfrac{a_{n+1}}{a_n}\right) = \lim n \cdot \left(1 -  \dfrac{n+1}{a+n+1}\right) = \lim \dfrac{na}{a+n+1}=a.
$$
Por lo tanto, si $a>1$ la serie es convergente. Si $a<1$ la serie es divergente. Si $a=1$ nos queda la serie
$$
\sum \dfrac{n!}{(n+1)!} = \sum \dfrac{1}{n+1}
$$
que es divergente.

## Criterio de condensación

<l class="prop"> **Proposición. Criterio de condensación.**

Sea $\{a_n\}$ una sucesión de términos positivos decreciente, es decir, $a_1 \geq a_2 \geq \cdots \geq 0$. Entonces las series $\sum_{n\geq 1} a_n$ y $\sum_{k \geq 1} 2^k a_{2^k}= a_1+2a_2+4a_4+ \cdots 2^ka_{2^k}+ \cdots$ tienen el mismo carácter.

<div class="dem"> **Demostración**

Dado  $n>2^k$, y que la sucesión $\{a_n\}$ es decreciente, tenemos
$$
S_n \leq a_1+(a_2+a_3)+ \cdots+(a_{2^k}+\cdots+a_{2^{k+1}-1}) \leq a_1 + 2a_2+ \cdots + 2^k a_{2^k}= T_k,
$$
donde $S_n$ es el término enésimo de la sucesión de sumas parciales de $\sum a_n$ y $T_k$ el k-ésimo de la serie $\sum_{k \geq 1} 2^k a_{2^k}$.

Análogamente comprobaríamos que si $n>2^k$, entonces $2S_n \geq T_k$, por lo tanto las dos sucesiones son a la vez acotadas (o no acotadas), por lo que ambas seran convergentes (divergentes).

</div>

## Criterio de condensación: Ejemplo

<div class="example"> **Ejemplo**

 Sea $q \in \mathbb{N}$ fijo. Determinar el carácter de la serie $\sum \dfrac{1}{n\sqrt[q]{n}}$.
 
 Dado que la sucesión es de términos positivos y decreciente, podemos aplicar el criterio de condensación. Puesto que $2^k a_{2^k}= 2^k \dfrac{1}{2^k\sqrt[q]{2^k}}=\left(\dfrac{1}{\sqrt[q]{2}}\right)^k$, la serie "condensada" será
 $$
 \sum \left(\dfrac{1}{\sqrt[q]{2}}\right)^k
 $$
 es decir, una se tiene la geométrica de razón $\dfrac{1}{\sqrt[q]{2}} < 1$ y, por lo tanto, convergente.
 


# Series de términos no necesariamente positivos


## Convergencia condicional

<l class="prop"> **Proposición. Convergencia absoluta.** </l>

Si $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es absolutamente convergente entonces $\displaystyle{\sum_{n=1}^{\infty}a_n}$ es convergente.

<div class="dem"> **Demostración**

Dado que si $m>n$, entonces 
$$
|a_{n+1}+ a_{n+2}+ \cdots + a_{m}| \leq |a_{n+1}|+ |a_{n+2}|+ \cdots + |a_{m}|
$$
entonces si $\displaystyle{\sum_{n=1}^{\infty}|a_n|} < \infty$, para todo $\epsilon >0$ existe $n_0$ tal que para todo $n,m \in \mathbb{N}$ tal que $m \geq n \geq n_0$, entonces $|a_{n+1}|+ |a_{n+2}|+ \cdots + |a_{m}| < \epsilon$ y, por lo tanto, por el criterio de Cauchy de convergencia será $|a_{n+1}+ a_{n+2}+ \cdots + a_{m}| < \epsilon$.

</div>

## Convergencia condicional

<div class="observ">
El recíproco no es cierto: una serie puede ser convergente sin ser absolutamente convergente. 
</div>


Es el caso de la serie $\displaystyle{\sum \dfrac{(-1)^n}{n}}$ que, como demostraremos más adelante, es convergente, en tanto que la serie de valores absolutos es la serie armónica que ya hemos visto que era divergente.  


<l class="definition"> **Definición.** </l>

Una serie convergente que no sea absolutamente convergente recibe el nombre de **condicionalmente convergente**



## Series alternadas

<l class="definition"> **Definición. Serie alternada.** </l>

Una **serie alternada** es una serie de la forma $\sum_{n=1}^{\infty} (-1)^n a_n$, con $a_n \geq 0$ para todo $n \in \mathbb{N}$.

Si $\sum a_n$ es **convergente**, entonces $\sum (-1)^n a_n$ es **absolutamente convergente**, en tanto que una serie alternada **convergente** tal que la correspondiente serie de **valores absolutos no sea convergente**, será una serie **condicionalmente convergente**.

Una de las propiedades que hace particularmente interesantes las series alternadas es que, bajo ciertas condiciones, para este tipo de series la condición necesaria de convergencia es también suficiente, tal y como se estipula en la proposición siguiente.

## Series alternadas: Criterio de Leibniz

<l class="prop"> **Proposición. Criterio de Leibniz.**

Sea $\sum (-1)^{n+1} a_n$ una serie alternada tal que la sucesión $a_n$ es decreciente, es decir que para todo $n$ es $a_n \geq a_{n+1}$. Entonces $\sum (-1)^{n+1} a_n$ es convergente si, y sólo si, $\lim a_n =0$

## Series alternadas: Criterio de Leibniz.

<div class="dem"> **Demostración**

$$
S_{2n} = a_1-a_2+a_3-a_4 \cdots +a_{2n-2}+a_{2n-1}-a_{2n}
$$
$$
=a_1-(a_2-a_3)-(a_4-a_5)- \cdots -(a_{2n-2}-a_{2n-1})-a_{2n}
$$
Dado que la sucesión es decreciente, tenemos que  $a_k - a_{k+1} \geq 0$ , por lo que $S_{2n} \leq a_1$. Además $S_{2n+2}-S_{2n}= a_{2n+1} - a_{2n+2} \geq 0$, es decir $S_{2n}$ es monótona creciente y está acotada superiormente, por lo existirá el $L =\lim S_{2n}$.

Análogamente, se demuestra que la sucesión $S_{2n+1}$ es decreciente y acotada inferiormente. Su límite es tambien $L$, puesto que $\lim S_{2n+1} - \lim S_{2n}=\lim (S_{2n+1} - S_{2n})= \lim a_{2n+1}= 0$. 

Finalmente $\lim S_n= L$, puesto que para todo $n$ existe $m$, tal que $2m \leq n <2m+1$, y por lo tanto, $S_{2m} \leq S_n \leq S_{2m+1}$ , en definitiva,  $\sum (-1)^{n+1} a_n$ es convergente.

</div>

## Series alternadas: Ejemplos.

<div class="example"> **Ejemplos**

**Ejemplo 1**. La serie $\sum \dfrac{(-1)^{n+1}}{n}$ es convergente, puesto que satisface las condiciones del criterio de Leibniz:
la sucesión de término general $\dfrac{1}{n}$ es decreciente y su límite es $0$. Como ya se ha mencionado, se trata de un ejemplo de serie condicionalmente convergente, puesto que la serie de valores absolutos es la serie armónica, que ya sabemos que es divergente. 

**Ejemplo 2**. La serie $\sum_{n=1}^{\infty} (-1)^n e^{-n}$ es convergente, dado que satisface la condiciones del criterio de Leibniz, es decir, $\lim e^{-n} =0$ y $e^{-n} \geq e^{-(n+1)}$. Se trata de una serie absolutamente convergente, puesto que $\lim \sqrt[n]{e^{-n}}= e^{-1} <1$. Conviene  observar que esta serie es una serie geomètrica de razón $-e^{-1}$, y por lo tanto su suma es 
$$
\sum_{n=1}^{\infty} (-1)^n e^{-n} = \dfrac{-1}{1+e}
$$

**Ejemplo 3**. La serie $\sum (-1)^{n+1} \dfrac{5^n}{n+1}$ es divergente, puesto que $\lim \dfrac{5^n}{n+1} \neq 0$

</div>

# Suma de algunos tipos de series

## Suma de las series hipergeométricas.

<l class="definition"> **Definición. Serie hipergeométrica.**

$\sum a_n$ es una serie **hipergeométrica** si para todo $n \in \mathbb{N}$ se verifica que 
$$
\dfrac{a_{n+1}}{a_n} = \dfrac{\alpha n + \beta}{\alpha n + \gamma}
$$
donde $\alpha$, $\beta$ y $\gamma$ son números reales tales que  $\alpha > 0$ y $\alpha+\beta < \gamma$

## Suma de las series hipergeométricas.

El criterio de Raabe permite comprobar que este tipo de series son convergentes, puesto que 
$$
\lim n \left(1- \dfrac{a_{n+1}}{a_n}\right)= \lim n  \left(1-  \dfrac{\alpha n + \beta}{\alpha n + \gamma} \right) = \lim \dfrac{n \gamma-n\beta}{\alpha n+\beta}= \dfrac{\gamma - \beta}{\alpha}
$$
y, por hipótesis, $\dfrac{\gamma - \beta}{\alpha} >1$, por lo que la serie es convergente.

## Suma de las series hipergeométricas.

Veamos ahora cual es la suma de una serie hipergeométrica.

Dado que $a_{k+1}(\alpha k + \gamma) = a_k(\alpha k + \beta)$ para todo $k=1,\ldots,n$, sumando miembro a miembro las $n$ igualdades, tendremos 
$$
S_n(\alpha + \beta) = (S_n - a_1) \gamma + a_n(n \alpha + \beta)
$$
por lo que 
$$
S_n =\dfrac{a_1 \gamma -a_n (n \alpha + \beta)}{\gamma - (\alpha + \beta)}
$$
Ahora, por ser $\sum a_n$ convergente, es $\lim n a_n = \lim a_n = 0$, resulta que
$$
\sum_{n=1}^{\infty} a_n = \lim S_n = \dfrac{a_1 \gamma}{\gamma - (\alpha + \beta)}
$$

## Series hipergeométricas: Ejemplo.

<div class="example"> **Ejemplo**

Calcular la suma de la serie $\displaystyle{\sum_{n = 1}^{\infty} \dfrac{1}{n(n+1)}}$, caso que sea convergente.

Puesto que $\dfrac{a_{n+1}}{a_n}= \dfrac{n(n+1)}{(n+1)(n+2)}= \dfrac{n}{n+2}$, se trata de una serie hipergeométrica con $\alpha = 1$, $\beta = 0$ y $\gamma =2$. 

Dado que $\alpha + \beta = 1 + 0 < 2 = \gamma$, la serie es convergente. Su suma
es
$$
\sum_{n=1}^{\infty} \dfrac{1}{n(n+1)} =  \dfrac{a_1 \gamma}{\gamma - (\alpha + \beta)} = \dfrac{\dfrac{1}{2} \cdot 2}{1+0}=1.
$$
</div>

## Series aritmético-geométricas

<l class="definition"> **Definición: serie aritmético-geométrica.**

Una serie **aritmético-geométrica** es una serie de la forma $\sum P(n)a_n$, con $\sum a_n$ una serie geométrica y $P(n)$ un polinomio en $n$. 

<l class="prop"> **Proposición. Covergencia de las series aritmético-geométricas.**

La serie aritmético-geométrica $\sum P(n)a_n$ es convergente si la razón, $r$, de la progresión geométrica asociada verifica que $|r|<1$.

<div class="dem"> **Demostración**

Es suficiente aplicar el criterio de d'Alembert a la serie de valores absolutos para obtener
$$
\lim_{n \rightarrow \infty} \dfrac{|P(n+1)a_{n+1}|}{|P(n)a_n|}=|r|.
$$
ya que $P(n+1)$ y $P(n)$ son dos polinomios en $n$ del mismo grado y con el mismo coeficiente de los términos de mayor grado.
</div>


## Suma de series aritmético-geométricas

Sea $\sum na_n$ una serie aritmético-geométrica, és decir $\sum a_n$ es una serie geométrica. Sea $r$ la razón de esta serie, es decir $\sum a_n=a \sum r^n$, con $a>0$. Tenemos que la suma  de la serie dada es $S = a(r+2r^2+3r^3+4r^4 + \cdots +(n-1) r^{n-1}+ nr^n)+ \cdots$, por otra parte $rS = a(r^2+2r^3+3r^4+4r^5 + \cdots +(n-1) r^n+ nr^{n+1}+ \cdots$, es decir
$$
S-rS= a(r+r^2+r^3 + \cdots+r^n+ \cdots ).
$$
Ahora, $(1-r) S = \dfrac{ar}{1-r}$, por lo que $\sum nr^na= \dfrac{ar}{(1-r)^2}$. 

En el caso general, hay que iterar este procedimiento hasta llegar a una serie geométrica.

Veamos un ejemplo.

## Suma de series aritmético-geométricas

<div class="example"> **Ejemplos**

**Ejemplo 1**. Sumar la serie $\displaystyle{\sum_{n\geq 1} (-1)^{n+1}\dfrac{n}{5^n}}$.

Se trata de una serie aritmético-geométrica con $r=-\dfrac{1}{5}$, por lo tanto es convergente y
$$
\sum_{n\geq 1} (-1)^{n+1}\dfrac{n}{5^n} =\dfrac{\dfrac{1}{5}}{\left(1+\dfrac{1}{5}\right)^2}=\dfrac{5}{36}
$$
</div>

## Suma de series aritmético-geométricas

<div class="example"> **Ejemplos**

**Ejemplo 2**. Sumar la serie $\displaystyle{\sum_{n\geq 1} (-1)^{n+1}\dfrac{n^2}{5^n}}$.

Se trata también de una serie aritmético-geométrica tal que $r=-\dfrac{1}{5}$. Sea $S$ su suma. Aplicando la metodología descrita obtenemos que 
$$
\left(1+\dfrac{1}{5}\right)S= \sum (-1)^{n+1}\dfrac{2n-1}{5^n}= 2 \cdot \sum (-1)^{n+1}\dfrac{n}{5^n} - \sum (-1)^{n+1}\dfrac{1}{5^n} = 2 \cdot \dfrac{5}{36} - \dfrac{1}{6} = \dfrac{1}{9}.
$$
En definitiva
$$
\sum (-1)^{n+1}\dfrac{n^2}{5^n} = \dfrac{1}{9} \cdot \dfrac{5}{6}= \dfrac{5}{54}.
$$


</div>

## Series telescópicas.

<l class="definition"> **Definición. Serie telescópica.** </l>

Una serie $\sum a_n$ es **telescópica** si existe una sucesión de término general $b_n$ tal que  para todo $n$ es
$$
a_n = b_n-b_{n+1}.
$$

## Series telescópicas.

<l class ="prop"> **Proposición. Convergencia de las series telescópicas.** </l>

Si 
$$
\sum_{n \geq 1} a_n = \sum_{n\geq 1} (b_n - b_{n+1}),
$$ 

entonces la serie es convergente si, y sólo sí, la sucesión $\{b_n\}$ es convergente. En cuyo caso 

$$
\sum_{n\geq 1} a_n = b_1 - \lim b_n
$$

## Series telescópicas

<div class="dem"> **Demostración**

Evidente, a partir del hecho que
$$
S_n = a_1+a_2+ \cdots+a_n = (b_1-b_2)+(b_2-b_3)+ \cdots+ (b_{n-2}-b_{n-1}+(b_{n-1}-b_n)=b_1 -b_n.
$$
</div>

## Series telescópicas: Ejemplos.


<div class="example"> **Ejemplos** 

**Ejemplo 1**. La serie 

$$
\sum_{n \geq 1} \dfrac{1}{(n+1)(n+2)}
$$ 

es telescópica, puesto que, como es fácil comprobar

$$
 \dfrac{1}{(n+1)(n+2)} =\dfrac{1}{n+1} - \dfrac{1}{n+2}
$$

dado que $\lim \dfrac{1}{n+2} =0$ y el primer término de la sucesión $\dfrac{1}{n+1}$ es $\dfrac{1}{2}$, tenemos que 
$$
\sum_{n \geq 1} \dfrac{1}{(n+1)(n+2)} = \dfrac{1}{2}
$$

</div>

## Series telescópicas: Ejemplos.

<div class="example">
**Ejemplo 2**. Sumar la serie $\displaystyle{\sum_{n \geq 1} \dfrac{a-1}{a^{n+1}}}$, con $a>1$.

Se trata de una serie telescópica, puesto 

$$
\sum_{n \geq 1} \dfrac{a-1}{a^{n+1}}= \sum_{n \geq 1} \left(\dfrac{1}{a^n} - \dfrac{1}{a^{n+1}}\right).
$$

Dado que $\lim \dfrac{1}{a^{n+1}}=0$, la serie es convergente y su suma es 

$$
\sum_{n \geq 1} \dfrac{a-1}{a^{n+1}}=\sum_{n \geq 1} \left(\dfrac{1}{a^n} - \dfrac{1}{a^{n+1}}\right) = \dfrac{1}{a}.
$$

</div>






