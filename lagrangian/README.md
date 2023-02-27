# ラグランジュ形式の力学

## 変数変換

これから、解析力学の解析力学らしいところ、すなわち変数変換に対する運動方程式の変換について扱う。解析力学はニュートン力学を再定式化したものであるから、本質的には同じ問題を別の表示に書き換えているのに過ぎない。しかし、別の形式で書き直した方が見通しがよくなるし、ニュートン力学では見えなかった世界が見えてくる。これからニュートン力学からラグランジュ形式の力学、そしてハミルトン形式の力学へと続いていくが、その前にニュートン力学のままだと変数変換が面倒であることを見ておこう。

二次元系に

## ラグランジアンの不変性

ラグランジアンを一般化座標$q$と一般化速度$\dot{q}$の関数、$L(\dot{q},q)$で書いておくと、オイラー・ラグランジュの運動方程式
$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}} \right) - \frac{\partial L}{\partial q} = 0
$$
が変数変換によって形を変えない。ラグランジアンの不変性は多変数の時にこそ活きるが、かなり式変形がややこしくなるので、まずは一変数の場合について見てみよう。

ある変数$q$について、変数変換$Q = f(q)$を考える。$q$がオイラー・ラグランジュの運動方程式を満たす時、変数変換後の変数$Q$についてもオイラー・ラグランジュの運動方程式
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
\dot{q} = \frac{dq}{dQ} \dot{Q}
$$
と書ける。ここで$dq/dQ$は$Q$の関数であることから、$\dot{q}$は$Q$と$\dot{Q}$両方の関数である。

以上から、変数変換後のラグランジアンの$Q$、$\dot{Q}$依存性を明示すると

$$
L(\dot{q}, q) = L(\dot{q}(\dot{Q},Q), q(Q))
$$
となる。

さて、このラグランジアン$L$の$Q$や$\dot{Q}$による偏微分を考えよう。$Q$依存性は、$\dot{q}$、$q$の両方の箇所に入っているから、
$$
\frac{\partial L}{\partial Q} = 
\frac{\partial L}{\partial \dot{q}} \frac{d\dot{q}}{dQ}
+
\frac{\partial L}{\partial q} \frac{dq}{dQ}
$$

一方、$\dot{Q}$は$\dot{q}$の場所にしか現れないので、

$$
\frac{\partial L}{\partial \dot{Q}}  = \frac{\partial L}{\partial \dot{q}} \frac{d\dot{q}}{d\dot{Q}}.
$$

ここで、合成関数の微分公式から

$$
\frac{d\dot{q}}{d\dot{Q}} = \frac{dq}{dt}\frac{dt}{dQ} = \frac{dq}{dQ}.
$$

以上より、

$$
\frac{\partial L}{\partial \dot{Q}} = \frac{\partial L}{\partial \dot{q}}\frac{dq}{dQ}
$$

オイラー・ラグランジュの運動方程式を作るためにこれを時間で微分すると、

$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{Q}}\right) =
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}}\right) \frac{dq}{dQ} + \frac{\partial L}{\partial \dot{q}} \frac{d \dot{q}}{dQ}
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

と書かれる。さらに、ラグランジアンにおいて$L(\dot{q}, q)$とし、$\dot{q}$と$q$は独立だとみなすが、ラグランジアンを時間積分する際には$q$と$\dot{q}$には$\dot{q} = dq/dt$の関係がある。これを記号の節約をせずにきちんと書くなら、ラグランジアンを$L(v, x)$と異なる記号で書いておけば独立であることがわかりやすく、これを時間積分する際には積分路が$s(t)$で指定されるとして、$x = s(t)$、$v = \dot{s}(t)$と表記することにすれば、$x$と$v$がどのような関係があるのかがわかりやすい。媒介変数であることがわかりやすいように$\xi$や$\eta$といった記号を使う流儀もある。しかし、このように表記すると記号が増え、かえって本質が見えにくくなると考える。大多数の読者はここで細かく計算せず、なんとなく「そういうものだ」と納得するであろうし、今はそれで良いと思う。どうせ解析力学をきちんと理解するのは時間がかかる。まずはざっと式変形の地図を頭にイメージできるようにして、あとで「あれ？」と思ったら別の書籍を調べて正確な理解を目指せば良い。

