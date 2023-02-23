# ハミルトンの原理

## ダランベールの原理

仮想仕事の原理は、力が釣り合っており物体が静止している場合、すなわち静力学に適用する原理であった。これを動力学に応用するため、まずダランベールの原理(d'Alembert's principle)について述べる。

ニュートンの運動方程式から始めよう。

$$
m \frac{d^2x}{dt^2} = F
$$

仮想仕事の原理では物体は静止していたために左辺はゼロであったが、今回は動いている場合を扱うのでゼロではない。さて、この運動方程式の左辺を右辺に移項しよう。

$$
0 = - m \frac{d^2x}{dt^2} + F
$$

ここで$m dx^2/dt^2$を力とみなすと、式の上では力が釣り合っているかのように見える。そこで、右辺を仮想的な力であるとみなし、位置で積分したものを仮想仕事とみなそう。

$$
W \equiv \int \left(- m \frac{d^2x}{dt^2} + F \right)dx
$$

さて今、速度が位置の関数であるとみなそう。これは、元の運動方程式を解いて$v(t)$と$x(t)$が求められたあと、$t$を消去し、$v$を$x$で表したことに対応する。

すると、

$$
\begin{aligned}
\frac{dv}{dt} &= \frac{dv}{dx} \frac{dx}{dt},\\
&= v \frac{dv}{dx},
\end{aligned}
$$
であるから、
$$
\begin{aligned}
\frac{d}{dx}\left(\frac{1}{2}mv^2 \right)
&= mv \frac{dv}{dx} \\
&= m \frac{d v}{dt} \\
&= m \frac{d^2x}{dt^2}.
\end{aligned}
$$

これを先程の仮想仕事の式に代入すると、

$$
\begin{aligned}
W &\equiv \int \left(- m \frac{d^2x}{dt^2} + F \right)dx\\
&= \int \left(- m \frac{d^2x}{dt^2} + F \right)dx\\

\end{aligned}
$$
