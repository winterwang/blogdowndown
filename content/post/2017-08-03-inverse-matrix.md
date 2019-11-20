---
title: 「統計解析のための線形代数」復習筆記22
author: ''
date: '2017-08-03'
slug: inverse-matrix
categories:
  - statistics
tags:
  - basic mathematics
  - learning notes
  - Medical Statistics
summary: "第5章　行列式 determinant P87-89 逆矩陣的公式"
---

正方形矩陣 $A$ 的行列式滿足 $|A| \neq 0$ 時，逆矩陣可以表達爲(當 $|A|=0$ 時，正方形矩陣 $A$ 沒有逆矩陣)：
$$A^{-1}=\frac{1}{|A|}adj(A)=\frac{1}{|A|}(A_{ij})^t$$

$$=\frac{1}{|A|}\lbrace(-1)^{i+j}D_{ij}\rbrace^t$$



其中:<br>

- $adj(A)$ 爲[餘因子矩陣](https://winterwang.github.io/post/2017-03-15/)
- $A_{ij}$ 爲[餘因子](https://winterwang.github.io/post/2017-03-15/)
- $D_{ij}$ [爲小行列式](https://winterwang.github.io/post/2017-03-15/)


(1) 之前舉過的例子再拿來試試看：

$$X=\left(
\begin{array}{c}
1 & 2 & 1 \newline
2 & 1 & 1 \newline
1 & 1 & 2
\end{array}
\right)=\left(\begin{array}{c}
x\_{11} & x\_{12} & x\_{13} \newline
x\_{21} & x\_{22} & x\_{23} \newline
x\_{31} & x\_{32} & x\_{33}
\end{array}\right)$$
<br>

 元素 $x\_{ij}$ 的餘因子 $X\_{ij}(i,j=1,2,3)$ 爲：

$$X\_{11}=(-1)^{1+1}\left|
\begin{array}{c}
1 & 1 \newline
1 & 2
\end{array}\right|=1$$

$$X\_{12}=(-1)^{1+2}\left|
\begin{array}{c}
2 & 1 \newline
1 & 2
\end{array}\right|=-3$$

$$X\_{13}=(-1)^{1+3}\left|
\begin{array}{c}
2 & 1 \newline
1 & 1
\end{array}\right|=1$$

$$X\_{21}=(-1)^{2+1}\left|
\begin{array}{c}
2 & 1 \newline
1 & 2
\end{array}\right|=-3$$

$$X\_{22}=(-1)^{2+2}\left|
\begin{array}{c}
1 & 1 \newline
1 & 2
\end{array}\right|=1$$

$$X\_{23}=(-1)^{2+3}\left|
\begin{array}{c}
1 & 2 \newline
1 & 1
\end{array}\right|=1$$

$$X\_{31}=(-1)^{3+1}\left|
\begin{array}{c}
2 & 1 \newline
1 & 1
\end{array}\right|=1$$

$$X\_{32}=(-1)^{3+2}\left|
\begin{array}{c}
1 & 1 \newline
2 & 1
\end{array}\right|=1$$

$$X\_{33}=(-1)^{3+3}\left|
\begin{array}{c}
1 & 2 \newline
2 & 1
\end{array}\right|=-3$$

因此餘因子矩陣爲：$adj(X)=\left(
\begin{array}{c}
1 & -3 & 1 \newline
-3 & 1 & 1 \newline
1 & 1 & -3
\end{array}
\right)^t=\left(
\begin{array}{c}
1 & -3 & 1 \newline
-3 & 1 & 1 \newline
1 & 1 & -3
\end{array}
\right)$

我們看見這個餘因子矩陣是一個對稱矩陣，這是由於原矩陣 $X$ 本身就是一個對稱矩陣。另外，行列式爲：

$$\begin{align}|X|&=1\times X\_{11}+2\times X\_{12}+1\times X\_{13}\newline&=1\times1+2\times(-3)+1\times1\newline&=-4\end{align}$$

因此所求的逆矩陣爲：

$$\begin{align}X^{-1}&=\frac{1}{|X|}adj(X)\newline
&=\frac{1}{-4}\left(
\begin{array}{c}
1 & -3 & 1 \newline
-3 & 1 & 1 \newline
1 & 1 & -3
\end{array}
\right)\newline
&=\left(
\begin{array}{c}
-\frac{1}{4} & \frac{3}{4} & -\frac{1}{4} \newline
\frac{3}{4} & -\frac{1}{4} & -\frac{1}{4} \newline
-\frac{1}{4} & -\frac{1}{4} & \frac{3}{4}
\end{array}
\right)\end{align}$$

(2) 試求矩陣 $A=\left(
\begin{array}{c}
1 & 2 & 1 \newline
2 & 3 & 1 \newline
1 & 2 & 2
\end{array}
\right)=\left(
\begin{array}{c}
a\_{11} & a\_{12}  & a\_{13} \newline
a\_{21} & a\_{22}  & a\_{23} \newline
a\_{31} & a\_{32}  & a\_{33}
\end{array}
\right)$ 的逆矩陣 $A^{-1}$:

$$\begin{array}
=A\_{11}=6-2=4, & A\_{12}=-(4-1)=-3, & A\_{13}=4-3=1 \newline
A\_{21}=-(4-2)=-2, & A\_{22}=2-1=1, & A\_{23}=-(2-2)=0 \newline
A\_{31}=2-3=-1, & A\_{32}=-(1-2)=1, & A\_{33}=3-4=-1
\end{array}$$

$$adj(A)=\left(
\begin{array}{c}
4 & -3 & 1 \newline
-2 & 1 & 0 \newline
-1 & 1 & -1
\end{array}
\right)^t=\left(
\begin{array}{c}
4 & -2 & -1 \newline
-3 & 1 & 1 \newline
1 & 0 & -1
\end{array}
\right)$$

$$\begin{align}
|A| &=1\times A\_{11}+2\times A\_{12}+1\times A\_{13} \newline
    &=1\times4+2\times(-3)+1\times1 \newline
    &=4-6+1 \newline
    &=-1
\end{align}$$

$$
\therefore
\begin{align}
A^{-1} &= \frac{1}{(-1)}\left(
\begin{array}{c}
4 & -2 & -1 \newline
-3 & 1 & 1 \newline
1 & 0 & -1
\end{array}
\right) \newline
&=\left(
\begin{array}{c}
-4 & 2 & 1 \newline
3 & -1 & -1 \newline
-1 & 0 & 1
\end{array}
\right)
\end{align}$$
