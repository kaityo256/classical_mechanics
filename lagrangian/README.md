# ラグランジュ形式の力学

これから、解析力学の解析力学らしいところ、すなわち変数変換に対する運動方程式の変換について扱う。解析力学はニュートン力学を再定式化したものであるから、本質的には同じ問題を別の表示に書き換えているのに過ぎない。しかし、別の形式で書き直した方が見通しがよくなるし、ニュートン力学では見えなかった世界が見えてくる。これからニュートン力学からラグランジュ形式の力学、そしてハミルトン形式の力学へと続いていくが、その前にニュートン力学のままだと変数変換が面倒であることを見ておこう。

## 極座標の例

毎度の例で恐縮だが、極座標における運動を考えよう。以下のような二次元の極座標系を考える。

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

ここで、$r$方向にかかる力を$F_r$とすると、極座標の定義から

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

これが、スカラー関数でポテンシャルを書いておくと、変数変換に強いという意味であった。

同様に、

$$
F_\theta = - F_x \sin \theta + F_y \cos \theta
$$

となるが、

$$
\begin{aligned}
\frac{\partial x}{\partial \theta} &= - r\sin \theta \\
\frac{\partial y}{\partial \theta} &=  r\cos \theta \\
\end{aligned}
$$

を代入すると、

$$
\begin{aligned}
F_\theta &= - r \frac{\partial U}{\partial x} \frac{\partial x}{\partial \theta}
- r\frac{\partial U}{\partial y} \frac{\partial y}{\partial \theta} \\
&= -r \frac{\partial U}{\partial \theta} 
\end{aligned}
$$

$\theta$方向の加速度は、力と同様に(非常に面倒な計算により)以下のように求まる。

$$
-\ddot{x}  \cos \theta + \ddot{y} \cos \theta = mr\frac{d}{dt} \left(r^2 \dot{\theta} \right)
$$

加速度と力を等値すると、

$$
m\frac{d}{dt} \left(r^2 \dot{\theta} \right) = \frac{\partial U}{\partial \theta} 
$$

以上から、最終的に$r, \theta$に関する運動方程式

$$
\begin{aligned}
m (\ddot{r} - r \dot{\theta}^2) &= - \frac{\partial U}{\partial r} \\
m \frac{d}{dt} \left(r^2 \dot{\theta} \right) &= - \frac{\partial U}{\partial \theta} 
\end{aligned}
$$

を得る。

TODO: ラグランジアンから導出。

## 点変換とラグランジアンの共変性

ラグランジアンを一般化座標$q$と一般化速度$\dot{q}$の関数、$L(q,\dot{q})$で書いておくと、オイラー・ラグランジュの運動方程式

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}} \right) - \frac{\partial L}{\partial q} = 0
$$

が変数変換によって形を変えない。ラグランジアンの共変性は多変数の時にこそ活きるが、かなり式変形がややこしくなるので、まずは一変数の場合について見てみよう。

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
