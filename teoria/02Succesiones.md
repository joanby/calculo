---
title: "Tema 2 - Sucesiones y límites"
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

## Sucesiones

Como hemos visto, el conjunto de los números reales incluye todos los números racionales, es decir, todos los números que tengan un número finito de cifras en su desarrollo decimal. De hecho, también incluye algunos con un número infinito de cifras decimales como seria el caso de los decimales periódicos.

Por consiguiente, los números reales que no son racionales, es decir los números **irracionales** tienen una cantidad infinita de cifras en su desarrollo decimal, tal seria el caso de, por ejemplo $\sqrt{2}$, $\pi$ o $e$.  

Siendo así, ¿cómo podemos utilizar estos números con infinitas cifras decimales? La respuesta viene de la mano del concepto de **sucesión** y de **límite**. 

Cómo hemos demostrado, dado un número irracional y una precisión, siempre es posible determinar un racional que diste del iracional dado menos que dicha precisión. Es lo que hacemos cuando tomamos $\pi$ como $3.14$ o $3.1415$, $\ldots$

## Ejemplos

<div class="example">

**Ejemplo 1.** Consideremos las sucesivas aproximaciones decimales de $\sqrt{2}$,

$$
1,1.4,1.41,1.414,1.4142,1.41421,\ldots
$$ 
Cada uno de estas aproximaciones mejora la anterior, puesto que cada una difiere de $\sqrt{2}$ en menos de $10^{-n}$, donde $n$ indica el número de cifras decimales de la aproximación racional. Obsérvese tambien que una vez alcanzada una determinada precisión, los términos siguientes mejoran dicha precisión.

En general, dado un $\epsilon$, es decir, una precisión, podemos asegurar que, a partir de un término dado que diste menos que esa precisión de la raíz cuadrada de 2, los subsiguientes términos distan de $\sqrt{2}$ menos que esa precisión. .

</div>

<div class="example">

**Ejemplo 2.** Análogamente, las sucesivas aproximaciones decimales del número $\pi$:
$$
3,3.1,3.14,3.141,3.1415,3.14159, \ldots
$$
aproximan el número $\pi$




</div>

## Sucesiones y límites

<l class="definition">Definición</l>

Una **sucesión** $\{a_n \}_{n \in \mathbb{N}}$ de números reales es un conjunto de números reales ordenado según un subíndice que recorre los números naturales. Dicho de una manera más formal, una sucesión de números reales es la imagen de una aplicación del conjunto $\mathbb{N}$ en los reales $\mathbb{R}$.



<div class="example">

**Ejemplos**

**Ejemplo 1. ** Dado un número real $r$, la sucesión constante $a_n = r$, para todo $n \in \mathbb{N}$ es un ejemplo de sucesión. Obsérvese que una sucesión tiene siempre infinitos términos, aunque puedan estar todos o algunos repetidos.

**Ejemplo 2.** La sucesión de término general $a_n = \dfrac{1}{n}$:
$$
1,\dfrac{1}{2},\dfrac{1}{3},\dfrac{1}{4}, \ldots ,\dfrac{1}{n}, \ldots
$$



## Ejemplos de sucesiones

<div class="example">

**Ejemplos**

**Ejemplo 3.** Un ejemplo interesante de sucesión lo constituye la de término general $a_n = 10^{-n}$, és decir la sucesión
$$
0.1,0.01,0.001,0.0001,0.00001, \ldots
$$

**Ejemplo 4.** La sucesión de aproximaciones decimales del número $\pi$: 

 $$
 a_1=3.1\quad a_2=3.14 \quad a_3=3.141 \quad a_4 = 3.1415 \quad a_4 =3.14159 \quad \ldots
 $$

**Ejemplo 5.** Las sucesivas aproximaciones decimales del número $\sqrt{2}$:

$$
a_1=1.4 \quad a_2=1.41 \quad a_3=1.414 \quad a_4=1.4142 \quad a_5=1.41421 \quad \ldots
$$


**Ejemplo 6.** En general, todo número  $\alpha \in \mathbb{R}$, admite un desarrollo decimal en la forma
$$
\alpha= \alpha_0 + \alpha_1 10^{-1}+ \alpha_2 10^{-2}+ \ldots + \alpha_k 10^{-k}+ \ldots 
$$
donde $a_0 \in \mathbb{Z}$ y cada $a_i \in \{0,1,2,\ldots, 9 \}$, de forma que determina una sucesión de término general 
$$
a_n = \alpha_0 + \alpha_1 10^{-1}+ \alpha_2 10^{-2}+ \ldots + \alpha_n 10^{-n} = \alpha_0.\alpha_1\alpha_2\alpha_3\ldots\alpha_n
$$
Obsérvese que para cada $n \in \mathbb{N}$ se tiene que $\alpha-a_n = \alpha_{n+1}10^{-(n+1)}+ \ldots < 10^{-n}$.


</div>

## Ejemplos de sucesiones

<div class="example">

**Ejemplos**

**Ejemplo 7.** La sucesión de **Fibonacci** és una sucesión *recurrente* definida a partir de dos números $x_1$ y $x_2$, de la forma

$$
x_n=x_{n-1} +x_{n-2}
$$
De tal manera que si $x_1 = x_2=1$, sus términos son:
$$
1,1,2,3,5,8,13,21,34, \ldots 
$$
**Ejemplo 8.** La sucesión, también recurrente, $x_1=c>0$, x_{n+1}=\dfrac{1}{2}(x_n + \dfrac{a}{x_n})$, donde $a$ es un nombre real positivo.

</div>

## Sucesiones y límites


<l class="definition">Definición</l>

 
Dada una sucessión $\{a_n\}_{n \in \mathbb{N}}$ de números reales, el número real $a$ és el **límite de la successión** dada si para cada $\epsilon > 0$ existe un lugar $n_0$, a partir del cual todos los términos de la sucesión distan de $a$ menos que $\epsilon$, es decir, si para todo $n \geq n_0$ es $|a_n -a|< \epsilon$

Escribiremos 

$$
\lim_{n \rightarrow \infty} a_{n} = a \quad \text{ o }  \quad a_n \rightarrow a
$$

Dicho de otra forma, $\lim_{n \rightarrow \infty} a_{n} = a$, si para cada $\epsilon >0$, existe un término de la sucesión $a_{n_0}$ tal que, a partir de el, todos los términos de la sucesión estan en el intervalo $(a-\epsilon, a+\epsilon)$.

## Ejemplos

<div class="example">

**Ejemplo 1.** La propiedad arquimediana implica que $\displaystyle{\lim_{n \rightarrow \infty}\dfrac{1}{n} = 0}$

puesto que para cada $\epsilon >0$, existe un número natural $n_0$ tal que $0<\dfrac{1}{n_0}< \epsilon$, por lo tanto, dado que para todo $n \geq n_0$, es $\dfrac{1}{n} \leq \dfrac{1}{n_0} < \epsilon$, que es lo que había que demostrar.

Así, si $\epsilon = 10^{-5}$, entonces $n_0 = \dfrac{1}{10^{-5}}+1= 10^5 +1$ y, si $n>n_0$, entonces $\dfrac{1}{n} < 10^{-5}$.

**Ejemplo 2.** $\displaystyle{\lim_{n \rightarrow \infty}\dfrac{n+1}{n} }= 1$

Efectivamente, dado que $n+1 > n$, $\displaystyle{\left| \dfrac{n+1}{n} -1 \right|} = \dfrac{n+1}{n} -1 = \dfrac{1}{n}$.

Ahora, como sabemos que dado un $\epsilon > 0$  existe $n_0 \in \mathbb{N}$ tal que $\dfrac{1}{n} < \epsilon$ para todo $n\geq n_0$, obtenemos el resultado pedido.

## Observación

<l class="important"> Téngase en cuenta que </l> $\epsilon$ <l class="important"> determina el lugar a partir del cual los términos de la sucesión satisfacen </l> $|a_n - a|<\epsilon$. <l class="important"> Un cambio en </l> $\epsilon$ <l class="important"> sólo cambia el lugar a partir del cual se satisface la desigualdad.</l>

<div class="important"> La existencia o no del límite de una sucesión no depende de los primeros términos de la misma, es decir sólo depende del comportamiento final de los términos de la sucesión. s decir, si se remplazan qualquier número finito de los términos de una sucesión la sucesión resultante seguirá teniendo límite o no.

</div>

## Propiedades  de los límites de sucesiones (1).

<l class="prop">**Proposición** </l>

El límite de una sucesión, si existe, és único.

<div class="dem">

**Demostración**

Supongamos que no, que $a_1$ y que $a_2$ son los dos límites de la sucessión ${a_n}_{n\in  \mathbb{N}}. En tonces, dado un $\epsilon >0$ existen $n_1$ y $n_2$ tales que 
$$
|a_n-a_1| <\dfrac{\epsilon}{2}  \quad \text{ y } \quad  |a_n-a_2| <\dfrac{\epsilon}{2}
$$
para todo $n>n1$, para la primera desigualdad y para todo $n>n_2$, para la segunda.

Ahora $|a_1-a_2| = $|a_1-a_n +a_n -a_2| \leq |a_1-a_n| + |a_n -a_2| < \dfrac{\epsilon}{2}+\dfrac{\epsilon}{2} = \epsilon$, siempre que $n>n_1$ y $n>n_2. POr lo tanto, para todo $\epsilon >0$ es $|a_1-a_2| <\epsilon$ y esto sólo puede ocurrir si $|a_1-a_2| =0$, es decir si $a_1 = a_2$.

## Propiedades de los límites (2).

<l class="prop">**Proposición**

Toda sucesión convergente esta acotada. Es decir, si existe el $\lim_{n \rightarrow \infty} a_n $, entonces existen $n_ 0 \in \mathbb{N}$ y $K \in \mathbb{R}$, $K>0$, tal que $|a_n |<K$ para todo $n>n_0$.

<div class="dem">

**Demostración.**

Sea $a=\lim_{n \rightarrow \infty}a_n$. Dado que $1>0$,  existe $n_0$ tal que para todo $n \geq n_0$ es $|a_n -a|<1$. Ahora $|a_n| -|a| <|a_n - a|<1$, es decir, $|a_n| < |a|+1$.
Sea $K= \max \{|a_1|, |a_2|, \ldots |a_{n_0-1}|, 1+|a| \}$. 

Con esta elección de $K$, está claro que $|a_n| < K$ para todo $n \in \mathbb{N}$.

</div>

Si representamos los números reales mediante límites de sucesiones, para que esta representación sea útil, también debería servir para representar las operaciones entre ellos. De esto se ocupa la proposición siguiente.


## Operaciones entre sucesiones.

Dadas dos sucesiones $\{a_n\}_{n\in \mathbb{N}}$ y $\{b_n\}_{n \in \mathbb{N}}$, se definen la sucesión suma y producto de la forma:

  1) $\{a_n \}_{n \in \mathbb{N}} + \{b_n \}_{n \in \mathbb{N}} = \{a_n+b_n\}_{n \in \mathbb{N}}$
  
  2) $\{a_n \}_{n \in \mathbb{N}} \cdot \{b_n \}_{n \in \mathbb{N}} = \{a_n \cdot b_n\}_{n \in \mathbb{N}}$

  3) Si $a_n \neq 0$ para todo $n \in \mathbb{N}$, entonces $\dfrac{1}{\{a_n\}_{n \in \mathbb{N}}} = \displaystyle{ \left\{\dfrac{1}{a_n}\right\}}_{n \in \mathbb{N}}$

En realidad, para poder definir la inversa de una sucesión, no es necesario que todos los términos sean diferentes de $0$, es suficiente que sean diferentes de $0$ todos los términos a partir de una dado.

## Límites y operaciones (1).

<l class="prop">**Proposición**</l>

Si $a_n \rightarrow a$ y $b_n \rightarrow b$, entonces

  a) $a_n+b_n \rightarrow a+b$.
  b) $a_nb_n \rightarrow ab$.
  c) Si $b \neq  0$, entonces $\dfrac{a_n}{b_n} \rightarrow \dfrac{a}{b}$
  d) Si $a_n \leq b_n$, entonces $a \leq b$.


## Límites y operaciones (2).

<div class="dem">

**Demostración**

  1) Dado un $\epsilon >0$, existen $n_1,n_2 \in \mathbb{N}$, tales que $|a_1 -a|< \dfrac{\epsilon}{2}$ si $n>n_1$ y $|b_n -b|< \dfrac{\epsilon}{2}$ si $n>n_2$. Entonces, si $n \geq \max\{n_1,n_2\}$, tendremos que: 
$$|(a_n + b_n) - (a+b)| = |(a_n -a)+(b_n-b)| \leq |a_n -a|+|b_n - b| < \dfrac{\epsilon}{2}+ \dfrac{\epsilon}{2} = \epsilon 
$$



