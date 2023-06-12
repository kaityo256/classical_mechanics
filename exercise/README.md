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

## 振り子の運動

### 問題

二次元平面の原点に長さ$l$の棒に繋がれた質量$m$の質点がある。棒は原点を中心として摩擦なく自由に回転できる。また、棒は質量が無視でき、かつ運動により長さが変化しないものとする。棒が鉛直下方向からなす角度を$\theta$、重力加速度を$g$とする。この時、以下の問にこたえよ。

### (1) 

角速度が$\dot{\theta}$である時、この系の運動エネルギーを求めよ。

### (2) 

$\theta=0$の状態を基準とした時のこの系のポテンシャルエネルギーを求めよ。

### (3) 

この系のラグランジアンを$\theta, \dot{\theta}$の関数として求め、オイラー・ラグランジュの式から運動方程式を導出せよ。ただし、結果は

$$
\ddot{\theta} = 
$$

の形に整理すること。

### 解答例

(1) 速度が$l\dot{\theta}$であるから、運動エネルギーは以下で与えられる。

$$
K= \frac{1}{2}m l^2 \dot{\theta}^2
$$

(2) 角度$\theta$の時、$\theta=0$の時に比べて高さが$l(1-\cos\theta)$だけ高くなるため、ポテンシャルエネルギーは以下で与えられる。

$$
U = mgl (1- \cos \theta)
$$

(3) ラグランジアンは$L=K-U$で与えられるため、

$$
L(\theta, \dot{\theta}) = \frac{1}{2}m l^2 \dot{\theta}^2 - mlg (1- \cos \theta)
$$

$$
\begin{aligned}
\frac{\partial L}{\partial \dot{\theta}} &= ml^2 \dot{\theta} \\
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{\theta}}\right) &= ml^2 \ddot{\theta} \\
\frac{\partial L}{\partial \theta} &= - mlg\sin \theta
\end{aligned}
$$


オイラー・ラグランジュ方程式は

$$
\begin{aligned}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{\theta}}\right)  - \frac{\partial L}{\partial \theta}
&= ml^2 \ddot{\theta} + mlg\sin \theta \\
&= 0
\end{aligned}
$$

整理すると、以下の運動方程式を得る。

$$
\ddot{\theta} = -\frac{g}{l} \sin \theta
$$

## 中心力による運動

### 問題

二次元空間において、質量$m$の質点が中心力$U(r)$を受けて運動をしている。ただし、質点の位置を$(x,y)$とした時、$r=\sqrt{x^2+y^2}$である。この質点の運動を、以下の極座標表示で表したい。

$$
\begin{aligned}
x &= r\cos \theta\\
y &= r\sin \theta
\end{aligned}
$$

この時、以下の問に答えよ。

### (1)

この系の運動エネルギー$K$を、$r, \theta, \dot{r}, \dot{\theta}$の関数として求めよ。

### 解答例

(1) 

極座標表示を時間微分する

$$
\begin{aligned}
\dot{x} &= \dot{r}\cos \theta - r \dot{\theta} \sin \theta\\
\dot{y} &= \dot{r}\sin \theta + r \dot{\theta} \cos \theta
\end{aligned}
$$

この系の運動エネルギーは$m(\dot{x}^2 + \dot{y}^2)/2$であることから、

$$
K = m(\dot{r}^2 + r^2 \dot{\theta}^2)
$$
