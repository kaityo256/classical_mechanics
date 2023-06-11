# ラグランジュ形式の力学

これから、解析力学の解析力学らしいところ、すなわち変数変換に対する運動方程式の変換について扱う。解析力学はニュートン力学を再定式化したものであるから、本質的には同じ問題を別の表示に書き換えているのに過ぎない。しかし、別の形式で書き直した方が見通しがよくなるし、ニュートン力学では見えなかった世界が見えてくる。まずは、ラグランジュ形式の力学が、ニュートン力学よりも広いタイプの変数変換に対して共変であることを見てみよう。

## 極座標の例

極座標における運動を考えよう。以下のような二次元の極座標系を考える。

$$
\begin{aligned}
x &= r\cos\theta \\
y &= r\sin \theta
\end{aligned}
$$

この系がポテンシャル$U(x,y)$による保存力により運動しているとしよう。ユークリッド座標で記述した運動方程式は、

$$
\begin{aligned}
m \ddot{x} &= F_x = -\frac{\partial U}{\partial x} \\
m \ddot{y} &= F_y = -\frac{\partial U}{\partial y} \\
\end{aligned}
$$

$r$方向の加速度$a_r$、$\theta$方向の加速度$a_\theta$、$r$方向の力$F_r$、$\theta$方向の力$F_\theta$を用いると、ニュートンの運動方程式は

$$
\begin{aligned}
m a_r &= F_r \\
m a_\theta &= F_\theta
\end{aligned}
$$

となる。この式を$r, \theta$で書き下すのが目的である。まず、力について考えよう。力の$r$方向の向きの成分を考えると、

$$
F_r = F_x \cos \theta + F_y \sin \theta
$$

ここで、$\cos \theta = x/r, \sin \theta = y/r$ であるから、

$$
\begin{aligned}
F_r &= F_x \cos \theta + F_y \sin \theta \\
&= F_x \frac{x}{r} + F_y \frac{y}{r}\\
&= -\frac{\partial U}{\partial x}\frac{x}{r} - \frac{\partial U}{\partial y}\frac{y}{r}
\end{aligned}
$$

ここで、$U$の変数変換の意味を考えておこう。もともと$U$は$x,y$の関数$U(x,y)$であった。しかし、$x,y$を$r, \theta$の関数として表したので、$U$は$x,y$を通じて$U(x(r,\theta), y(r, \theta))$という形で$r, \theta$依存性が入る。合成関数の偏微分から

$$
\begin{aligned}
\frac{\partial U}{\partial r} &= \frac{\partial U}{\partial x} \frac{\partial x}{\partial r}
+ \frac{\partial U}{\partial y} \frac{\partial y}{\partial r} \\
&= \frac{\partial U}{\partial x}\frac{x}{r} + \frac{\partial U}{\partial y}\frac{y}{r}
\end{aligned}
$$

以上から、

$$
F_r = \frac{\partial U}{\partial r}
$$

すなわち、変数変換しても力の形が変わっていない。これがスカラー関数で書いておくと変数変換が楽になる、という実例である。

同様に、$\theta$方向の力についての成分を考えると

$$
F_\theta = - F_x \sin \theta + F_y \cos \theta
$$

となる。

$$
\begin{aligned}
\frac{\partial x}{\partial \theta} &= - r\sin \theta \\
\frac{\partial y}{\partial \theta} &=  r\cos \theta \\
\end{aligned}
$$

を代入すると、

$$
\begin{aligned}
F_\theta &= - \frac{1}{r}\frac{\partial U}{\partial x} \frac{\partial x}{\partial \theta}
- \frac{1}{r}\frac{\partial U}{\partial y} \frac{\partial y}{\partial \theta} \\
&= -\frac{1}{r} \frac{\partial U}{\partial \theta}
\end{aligned}
$$

これで運動方程式の右辺が求まった。次は左辺である。加速度の成分も力と同様に、

$$
\begin{aligned}
a_r &= \ddot{x} \cos \theta + \ddot{y} \sin \theta \\
a_\theta &= -\ddot{x} \sin \theta + \ddot{y} \cos \theta
\end{aligned}
$$

これを求めるために、極座標の定義を時間微分する。まず一回微分。

$$
\begin{aligned}
\dot{x} = \dot{r} \cos \theta - r \dot{\theta} \sin \theta \\
\dot{y} = \dot{r} \sin \theta + r \dot{\theta} \cos \theta \\
\end{aligned}
$$

さらにもう一度微分する。

$$
\begin{aligned}
\ddot{x} &= \ddot{r} \cos \theta - 2\dot{r} \dot{\theta} \sin \theta - r\ddot{\theta} \sin \theta- r \dot{\theta}^2 \cos \theta \\
\ddot{y} &= \ddot{r} \sin \theta + 2\dot{r} \dot{\theta} \cos \theta + r\ddot{\theta} \sin \theta- r \dot{\theta}^2 \sin \theta
\end{aligned}
$$

これで$a_r$が計算できる。

$$
\begin{aligned}
a_r &= \ddot{x} \cos \theta + \ddot{y} \sin \theta\\
&= \ddot{r} - r \dot{\theta}^2
\end{aligned}
$$

次は$a_\theta$を計算しよう。

$$
\begin{aligned}
a_\theta &= -\ddot{x} \sin \theta + \ddot{y} \cos \theta \\
&= 2 \dot{r}\dot{\theta} + r \ddot{\theta} \\
&= \frac{1}{r}(2 r\dot{r}\dot{\theta} + r^2 \ddot{\theta})\\
&= \frac{1}{r}\frac{d}{dt}(r^2\dot{\theta})
\end{aligned}
$$

以上をまとめると、最終的に$r, \theta$に関する運動方程式

$$
\begin{aligned}
m (\ddot{r} - r \dot{\theta}^2) &= - \frac{\partial U}{\partial r} \\
m \frac{d}{dt} \left(r^2 \dot{\theta} \right) &= - \frac{\partial U}{\partial \theta}
\end{aligned}
$$

を得る。非常に面倒であったことがわかるであろう。

では、ラグランジアンから導出しよう。運動エネルギーを$r, \theta$で書くと、

$$
K = \frac{1}{2}m(\dot{r}^2 + r^2\dot{\theta}^2)
$$

であるから、極座標のラグランジアンは

$$
L(r, \theta, \dot{r},\dot{\theta}) = \frac{1}{2}m(\dot{r}^2 + r^2\dot{\theta}^2) - U(r, \theta)
$$

自由度$r$に関するオイラー・ラグランジュ方程式は、

$$
\begin{aligned}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{r}}\right)
- \frac{\partial L}{\partial r} &= m \ddot{r}
- mr \dot{\theta}^2 + \frac{\partial U}{\partial r} \\
&= 0
\end{aligned}
$$

自由度$\theta$に関するオイラー・ラグランジュ方程式は、

$$
\begin{aligned}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{\theta}}\right)
- \frac{\partial L}{\partial \theta} &= m\frac{d}{dt}(r^2 \dot{\theta}) + \frac{\partial U}{\partial r} \\
&= 0
\end{aligned}
$$

それぞれ整理すると、先程得られた式と全く同じ運動方程式が得られる。

$$
\begin{aligned}
m (\ddot{r} - r \dot{\theta}^2) &= - \frac{\partial U}{\partial r} \\
m \frac{d}{dt} \left(r^2 \dot{\theta} \right) &= - \frac{\partial U}{\partial \theta}
\end{aligned}
$$

このように、一度ラグランジアンを書いてしまえば、ラグランジアンだけを変数変換することで、後はオイラー・ラグランジュの方程式を書き下すだけで新しい変数が従う運動方程式が得られる。3次元の極座標や、より一般の変数変換をニュートンの運動方程式で扱うのは極めて面倒だが、ラグランジアンを用いればかなり見通しよく計算ができる。以下では、オイラー・ラグランジュ方程式が任意の点変換に対して共変であることを証明しよう。

## 点変換とラグランジアンの共変性

これから証明したいことは、一般の変数変換$(q^1, q^2, \cdots, q^N) \rightarrow (Q^1, Q^2, \cdots, Q^N)$において、元の変数がオイラー・ラグランジュ方程式

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}^i} \right) -
\frac{\partial L}{\partial q^i} = 0 \quad (i = 1,2,\cdots, N)
$$

に従うならば、新しい変数も

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{Q}^i} \right) -
\frac{\partial L}{\partial Q^i} = 0 \quad (i = 1,2,\cdots, N)
$$

に従う、という命題である。このような変換を **点変換(point transformation)** と呼ぶ。オイラー・ラグランジュ方程式は任意の点変換に対して共変である。しかし、この導出はかなり複雑であるため、まずは一自由度系で証明しよう。

ある変数$q$について、変数変換$Q = f(q)$を考える。$q$がオイラー・ラグランジュの運動方程式

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}} \right) - \frac{\partial L}{\partial q} = 0
$$

を満たす時、変数変換後の変数$Q$についてもオイラー・ラグランジュの運動方程式

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{Q}} \right) - \frac{\partial L}{\partial Q} = 0
$$

を満たす、というのが証明したいことである。

そのために、まず$Q = f(q)$を$Q$について逆に解いて

$$
q = f^{-1}(Q)
$$

と書く。ここで、$f^{-1}$を$q$と同一視し、以後は$q(Q)$と書く。すると、$\dot{q}$は、

$$
\dot{q} \equiv \frac{d}{dt}q(Q) =  \frac{dq}{dQ} \dot{Q}
$$

と書ける。ここで$dq/dQ$は$Q$の関数であるから、$\dot{q}$は$Q$と$\dot{Q}$両方の関数である。そこで、$\dot{q} = \dot{q}(Q,\dot{Q})$と表現する。後のために、いくつか関係式を導出しておく。$\dot{q}$は$Q$及び$\dot{Q}$の関数であるから、それらが独立だと思って$Q$や$\dot{Q}$で偏微分する。まず、$\dot{q}$を$Q$で偏微分すると、

$$
\frac{\partial \dot{q}}{\partial Q} = \frac{d^2q}{dQ^2} \dot{Q}
$$

次に、$\dot{q}$を$\dot{Q}$で偏微分すると、

$$
\frac{\partial \dot{q}}{\partial \dot{Q}} = \frac{dq}{dQ}
$$

更に時間微分すると、

$$
\frac{d}{dt}\left(\frac{\partial \dot{q}}{\partial \dot{Q}}\right) = \frac{d^2q}{dQ^2} \dot{Q}
$$

従って、

$$
\frac{d}{dt}\left(\frac{\partial \dot{q}}{\partial \dot{Q}}\right) = \frac{\partial \dot{q}}{\partial Q}
$$

が証明された。さて、ラグランジアンの$Q, \dot{Q}$依存性をあらわに書くと

$$
L(\dot{q}, q) = L(\dot{q}(\dot{Q},Q), q(Q))
$$

このラグランジアン$L$の$\dot{Q}$による偏微分を考えよう。$\dot{Q}$は$\dot{q}$の場所にしか現れないため

$$
\frac{\partial L}{\partial \dot{Q}}  = \frac{\partial L}{\partial \dot{q}} \frac{\partial \dot{q}}{\partial \dot{Q}}
$$

ただし、先程導いた関係式 $\partial \dot{q}/\partial \dot{Q} = dq/dQ$を用いた。$Q, \dot{Q}$に関するオイラー・ラグランジュ方程式を作りたいので、さらに時間で微分すると、

$$
\begin{aligned}
\frac{d}{dt}\left( \frac{\partial L}{\partial \dot{Q}} \right) &=
\frac{d}{dt}\left( \frac{\partial L}{\partial \dot{q}} \right) \frac{\partial \dot{q}}{\partial \dot{Q}} + \frac{\partial L}{\partial \dot{q}} \frac{d}{dt}\left( \frac{\partial \dot{q}}{\partial \dot{Q}} \right) \\
&= \frac{d}{dt}\left( \frac{\partial L}{\partial \dot{q}} \right) \frac{dq}{dQ}
+ \frac{\partial L}{\partial \dot{q}} \frac{\partial \dot{q}}{\partial Q}
\end{aligned}
$$

次にラグランジアンの$Q$偏微分を考える。$\dot{q}$、$q$は両方とも$Q$依存性を持つため、

$$
\frac{\partial L}{\partial Q} =
\frac{\partial L}{\partial \dot{q}} \frac{\partial \dot{q}}{\partial Q}
+
\frac{\partial L}{\partial q} \frac{dq}{dQ}
$$

一方、

以上より、

$$
\frac{\partial L}{\partial \dot{Q}} = \frac{\partial L}{\partial \dot{q}}\frac{dq}{dQ}
$$

オイラー・ラグランジュ方程式を作るため、上記を時間微分すると、

$$
\begin{aligned}
\frac{d}{dt} \left( \frac{\partial L}{\partial \dot{Q}}\right) &=
\frac{d}{dt} \left( \frac{\partial L}{\partial \dot{q}}  \right) \frac{dq}{dQ}
+ \frac{\partial L}{\partial \dot{q}} \frac{d}{dt} \left(\frac{dq}{dQ} \right) \\
&= \left( \frac{\partial L}{\partial \dot{q}}  \right) \frac{dq}{dQ} +
\frac{d^2 q}{d Q^2} \dot{Q}
\end{aligned}
$$

以上から、

$$
\begin{aligned}
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{Q}}\right) - \frac{\partial L}{\partial Q}
&= \frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}}\right) \frac{dq}{dQ}
+ \cancel{\frac{\partial L}{\partial \dot{q}} \frac{d \dot{q}}{dQ}}\\
&- \frac{\partial L}{\partial q} \frac{dq}{dQ} - \cancel{\frac{\partial L}{\partial \dot{q}} \frac{d\dot{q}}{dQ}} \\
&= \left[
\underbrace{
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}}\right) + \frac{\partial L}{\partial q}
}_{=0}
\right]
\frac{dq}{dQ} \\
&=0
\end{aligned}
$$

$q$を$Q(q)$に変数変換した場合、$q$がオイラー・ラグランジュの運動方程式に従うのであれば、$Q$も全く同じ形の式に従うことが証明された。

以上の変換を図解しておこう。

![点変換](fig/point_transformation.png)

## 多変数の場合

これまで、なるべく1自由度系で議論を構築してきた。しかし、ほとんどの場合、我々の興味ある系は複数の自由度を持つ。例えば3次元空間に$n$個粒子がいれば、座標を指定するだけで$3n$個の変数が必要である。そこで、系の状態が$N$個の一般化座標$q_1, q_2, \cdots, q_N$で指定されていると考えよう。単振り子なら$N=1$、二重振り子なら$N=2$、3次元$n$粒子系なら$N=3n$だ。このような多自由度系のラグランジアンの変数変換について扱おう。

この$N$自由度系において、ラグランジアン$L(\dot{q}_1, \dot{q}_2, \cdots, \dot{q}_N, q_1, q_2, \cdots, q_N)$が与えられており、以下のオイラー・ラグランジュの式が成り立つとしよう。

$$
\frac{d}{dt}\left( \frac{\partial L}{\partial \dot{q}_i}\right) - \frac{\partial L}{\partial q_i} = 0
$$

ただし$i$は$1$から$N$までの値をとり、そのすべてにおいてこの式が成立しているとする。ここで、$(q_1, q_2, \cdots, q_N)$から$(Q_1, Q_2, \cdots, Q_N)$への変換を考える。具体的には$N$本の関数$f_i$を使って、

$$
\begin{aligned}
Q_1 &= f_1(q_1, q_2, \cdots, q_N) \\
Q_2 &= f_2(q_1, q_2, \cdots, q_N) \\
&\cdots \\
Q_N &= f_N(q_1, q_2, \cdots, q_N)
\end{aligned}
$$

と変換が与えられたとする。この時、新しい変数においても

$$
\frac{d}{dt}\left( \frac{\partial L}{\partial \dot{Q}_i}\right) - \frac{\partial L}{\partial Q_i} = 0
$$

が全ての$i$で成立することを証明したい。やることは1自由度系とほとんど同様だが、偏微分などがややこしくなる。

TODO: 続きを書く

## 記号の節約表記について

ここで、ラグランジアンを扱う際にどの変数を独立とみなし、どの変数が独立でないのかがよくわからなくなることが多い。これは主に表記において記号の節約を行うことに起因する。例えば、ある関数$f$を使って$Q = f(q)$と変換する時、$Q$の時間微分は

$$
\frac{dQ}{dt} = \frac{df}{dq} \frac{dq}{dt}
$$

と書ける。これは単なる合成関数の微分公式であるから何も問題はない。しかし、多くの場合$f$は$Q$と同一視され、

$$
\dot{Q} = \frac{dQ}{dq} \dot{q}
$$

と書かれる。さらに、ラグランジアンにおいて$L(\dot{q}, q)$とし、$\dot{q}$と$q$は独立だとみなすが、ラグランジアンを時間積分する際には$q$と$\dot{q}$には$\dot{q} = dq/dt$の関係がある。これを記号の節約をせずにきちんと書くなら、ラグランジアンを$L(v, x)$と異なる記号で書いておけば独立であることがわかりやすく、これを時間積分する際には積分路が$s(t)$で指定されるとして、$x = s(t)$、$v = \dot{s}(t)$と表記することにすれば、$x$と$v$がどのような関係があるのかがわかりやすい。媒介変数であることがわかりやすいように$\xi$や$\eta$といった記号を使う流儀もある。しかし、このように表記すると記号が増え、かえって本質が見えづらいと感じる人もいるであろう。大多数の読者は深く考えず、なんとなく「そういうものだ」と納得するであろうし、今はそれで良いと思う。もし将来、真面目に計算して何が独立で何がそうでないか混乱した時に、混乱の原因が変数の節約にあるかもしれないと思い至ればそれで良い。どうせ解析力学をきちんと理解するのは時間がかかる。まずはざっと式変形の地図を頭にイメージできるようにして、あとで「あれ？」と思ったら別の書籍を調べて正確な理解を目指せば良い。

## まとめ

ニュートンの運動方程式がガリレイ変換という限られた座標変換でのみ共変であったのに対して、オイラー・ラグランジュ方程式は、任意の非線形変換を含む点変換に対して共変であることが証明された。点変換の典型例は極座標表示である。二次元でもかなり面倒であるのだが、三次元の極座標が従う運動方程式を、ニュートン力学から導出するのは極めて面倒である(少なくとも私はやりたくない)。ラグランジアンを使ってもまだ面倒であるが、それでもかなり労力を減らすことができる。これは、単に計算が楽になるというだけでなく、系に内在する性質を見やすくするという、運動の本質をえぐり出すことにも繋がる。ここでは、座標を任意に混ぜる変換を考えた。次は運動量と座標も混ぜるような変換にたいして共変であるような運動方程式の表式が欲しくなる。それがハミルトンの運動方程式である。
