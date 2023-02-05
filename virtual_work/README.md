# 仮想仕事の原理

## 仕事

仮想仕事について学ぶ前に、仕事について復習しておこう。仕事とは「力と距離の積」であり、物体が受けた仕事の分だけエネルギーを得る。以下ではそれを見てみよう。

保存力のみが働いている系では、エネルギーが保存しているのであった。今、保存力$F$の他に、外部からの力$F_\mathrm{ex}$が働いているとする。運動方程式は以下のように書ける。

$$
m\frac{dx^2}{dt^2} = F + F_\mathrm{ex}
$$

保存力だけ左辺に移項しよう。

$$
m\frac{dx^2}{dt^2} -F = F_\mathrm{ex}
$$

$F$は保存力であるから、あるポテンシャル関数$U(x)$が存在し、$F=-U'(x)$と表現できる。

$$
m\frac{dx^2}{dt^2} + U'(x) = F_\mathrm{ex}
$$

両辺を$x$で積分する。積分範囲は$x_i$から$x_f$までとしよう。

$$
\int_{x_i}^{x_f} \left(m\frac{dx^2}{dt^2}\right)dx + \int_{x_i}^{x_f} U'(x)dx = \int_{x_i}^{x_f}F_\mathrm{ex} dx
$$

ここで

$$
\frac{d^2 x}{dt^2} = \frac{dv}{dt}
$$

であるから、

$$
\begin{aligned}
\frac{d}{dx}\left(\frac{1}{2}mv^2 \right)
&= mv \frac{dv}{dx}
\end{aligned}
$$
