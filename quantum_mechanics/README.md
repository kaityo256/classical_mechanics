# 解析力学から量子力学へ

## 交換関係

## 経路積分

## 時間非依存シュレーディンガー方程式

波動関数を$\psi(x,t)$とする時、一次元シュレーディンガー方程式は以下のように表現された。

$$
i\hbar \frac{\partial \psi}{\partial t}
= \left( -\frac{\hbar^2}{m}\frac{\partial^2}{\partial x^2} + V \right) \psi
$$

今、ポテンシャル$V$が位置$x$のみに依存し、$t$には依存しないとしよう。すると、左辺には時間に関係する項のみが、右辺には空間に関係する項のみがあるから変数分離ができる。

$$
\psi(x,t) = X(x)T(t)
$$

両辺に代入すると、

$$
i\hbar X(x)T'(t) = T(t) \left( -\frac{\hbar^2}{m}\frac{\partial^2}{\partial x^2} + V \right) X(x)
$$

整理すると、

$$
i\hbar \frac{T'(t)}{T(t)} = \frac{1}{X(x)} \left( -\frac{\hbar^2}{m}\frac{\partial^2}{\partial x^2} + V \right) X(x)
$$

左辺は$t$だけ、右辺は$x$だけの関数であるから、それが等式で結ばれるということは定数しかありえない。その定数を$E$とすると、

$$
i\hbar T'(t) = E T(t)
$$

ここから、

$$
T(t) \propto \exp(-i Et/\hbar)
$$

また、$x$に関する項は

$$
\left( -\frac{\hbar^2}{m}\frac{\partial^2}{\partial x^2} + V \right) X(x) = E X(x)
$$

改めて$X(x)$を$\psi(x)$と表記すると、

$$
\left( -\frac{\hbar^2}{m}\frac{\partial^2}{\partial x^2} + V \right) \psi = E \psi
$$

左辺を$\hat{H}$で書けば

$$
\hat{H}\psi = E\psi
$$

これが時間非依存のシュレーディンガー方程式である。意味は、ハミルトニアンを演算子とした時、波動関数がその演算子の固有関数であり、固有値がエネルギーであることを意味している。
