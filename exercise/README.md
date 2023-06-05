# 演習問題

## ニュートンの運動方程式

### 問題

二次元平面上に、質量$m$の質点が中心力$U(r)$を受けて運動している(ただし$r=\sqrt{x^2+y^2})$。この時、角運動量$L=m(\dot{x} y - \dot{y} x)$が保存量であることを示せ。

### 解答例

$$
r = \sqrt{x^2+y^2}
$$

であるから、

$$
\begin{aligned}
\frac{\partial r}{\partial x} & = \frac{x}{r} \\
\frac{\partial r}{\partial y} & = \frac{y}{r} 
\end{aligned}
$$

これを用いると、運動方程式は

$$
\begin{aligned}
m \ddot{x} &= - \partial_x U(r) = -U'(r) \frac{\partial r}{\partial x}= - U'(r) \frac{x}{r} \\
m \ddot{y} &= - \partial_y U(r) = -U'(r) \frac{\partial r}{\partial y}= - U'(r) \frac{y}{r} 
\end{aligned}
$$

従って、

$$
m \dot{x} y - m\ddot{y} x = 0
$$

角運動量の時間微分$\dot{L}$は

$$
\begin{aligned}
\dot{L} &= m \frac{d}{dt} (\dot{x} y - \dot{y} x) \\
&= m (\ddot{x} y + \cancel{\dot{x}\dot{y}} - \ddot{y}x - \cancel{\dot{y}\dot{x}}) \\
&= m \ddot{x} y - m \ddot{y} x \\
&=0
\end{aligned}
$$

以上から、角運動量$L$が保存量であることが示された。