---
title: "Fórmula del binomio de Newton"
author: "Juan Gabriel Gomila, Arnau Mir y Llorenç Valverde"
date: ''
output: 
  ioslides_presentation:
    widescreen: true
    css: Mery_style.css
    keep_md: yes
    logo: Images/calculus.gif
---


# Ejemplo de inducción: Fórmula del binomio de Newton

## Fórmula del binomio de Newton

<l class="prop"> **Proposición** </l>

Demuestra por inducción la  fórmula del binomio de Newton:
$$
(a+b)^n = \sum_{k=0}^n {n \choose k} a^{n-k}b^k 
$$
$$
= {n \choose 0}a^n+{n \choose 1} a^{n-1} b+ {n \choose 2} a^{n-2} b^2 + \cdots + {n \choose {n-1}} ab^{n-1}+ {n \choose n} b^n
$$
\vspace{.5cm}

donde  ${n \choose k}$ indica el número combinatorio definido de la forma:
$$
{n \choose k} =\dfrac{n!}{(n-k)!k!}
$$



## Triángulo de Pascal
<div class="center">
<img src="Images/tpascal1.png" width="1000px" />
</div>



## Triángulo de Pascal
<div class="center">
<img src="Images/tpascal2.png" width="900px" />
</div>




## La fórmula del binomio de Newton

Para $n=2$:
$$
(a+b)^2 = a^2+2ab+b^2
$$
Para $n=3$:
$$
(a+b)^3 = a^3+3a^2b+3ab^2 + b^3
$$

Para $n=4$:
$$
(a+b)^4 = a^4+4a^3b+6a^2b^2+4ab^3+b^4
$$
Para $n=5$:
$$
(a+b)^5= a^5+5a^4b+10a^3b^2+10a^2b^3+5ab^4+b^5
$$


## La fórmula del binomio de Newton

Para la demostración de la fórmula del binomio es conveniente recordar la siguientes propiedades de los números combinatorios:

1. $\displaystyle{ {n \choose k} = {n \choose {n-k}}}$
2. $\displaystyle{{n \choose 0} = {n \choose n} =1}$
3. $\displaystyle{{n \choose 1} = {n \choose {n-1}} =n}$
4. $\displaystyle{{n \choose k} = {{n-1} \choose {k-1}}+ {{n-1} \choose k}}$


<!-- La demostración de estas propiedades tan sólo requiere manipulaciones algebraicas elementales. -->


## La fórmula del binomio de Newton

La igualdad se cumple para $n=1$, puesto que, en este caso, ambos miembros son iguales a $a+b$.

Supongamos ahora que la igualdad es cierta hasta $n-1$, es decir que

$$
(a+b)^{n -1} = \sum_{k=0}^{n-1} {{n-1} \choose k} a^{n-1-k}b^k
$$
$$
= {{n-1} \choose 0}a^{n-1}+{{n-1} \choose 1} a^{n-2} b+ {{n-2} \choose 2} a^{n-3} b^2 + \cdots
$$
$$
+{{n-1} \choose k} a^{n-1-k}b^k + \cdots + {{n-1} \choose {n-2}} ab^{n-2}+ {{n-1} \choose {n-1}} b^{n-1},
$$



## La fórmula del binomio de Newton

Veamos que también es cierta para $n$:
$$
(a+b)^n = (a+b) (a+b)^{n-1} = a(a+b)^{n-1}+b(a+b)^{n-1}
$$
Ahora utilizamos la hipótesis de inducción para calcular $a(a+b)^{n-1}$:
$$
a(a+b)^{n-1} = {{n-1} \choose 0}a^n+{{n-1} \choose 1} a^{n-1} b+ {{n-2} \choose 2} a^{n-2} b^2 + \cdots
$$
$$
+{{n-1} \choose k} a^{n-k}b^k + \cdots + {{n-1} \choose {n-2}} a^2b^{n-2}+ {{n-1} \choose {n-1}} ab^{n-1}.
$$


## La fórmula del binomio de Newton

Hacemos lo mismo con $b(a+b)^{n-1}$:
$$
b(a+b)^{n-1} = {{n-1} \choose 0}a^{n-1} b+{{n-1} \choose 1} a^{n-2} b^2+ {{n-2} \choose 2} a^{n-3} b^3 + \cdots
$$
$$
+{{n-1} \choose {k-1}} a^{n-k}b^{k} + \cdots + {{n-1} \choose {n-2}} ab^{n-1}+ {{n-1} \choose {n-1}} b^n.
$$


## La fórmula del binomio de Newton

Al sumar miembro a miembro las dos igualdades anteriores, agrupando los términos en $a^{n-k} b^k$ y teniendo en cuenta las propiedades de los números combinatorios, resulta, por una parte, que
$$
 {{n-1} \choose 0}a^n = {n \choose 0}a_n \quad \text{y} \quad  {{n-1} \choose {n-1}}b^n = {n \choose n}b^n
$$
Por otra parte, dado que
$$
\left[{{n-1} \choose k} + {{n-1} \choose {k-1}} \right] a^{n-k}b^k = {n \choose k}a^{n-k}b^k
$$

Por lo tanto, queda demostrada la fórmula del binomio de Newton.


