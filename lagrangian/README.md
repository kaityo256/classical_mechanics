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
と書ける。以上から、ラグランジアンを$\dot{Q}, Q$で表すと
$$
L(\dot{q}, q) = L(\frac{dq}{dQ} \dot{Q}, Q(q))
$$
となる。ここで$dQ/dQ$は$Q$の関数であることに注意。

さて、$L$の$Q$や$\dot{Q}$による偏微分を考えよう。$Q$依存性は、$\dot{q}$、$q$の両方の箇所に入っているから、
$$
\frac{\partial L}{\partial Q} = \frac{\partial L}{\partial q} \frac{dq}{dQ}
+
\frac{\partial L}{\partial \dot{q}} \frac{d\dot{q}}{dQ}
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

TODO: 多変数の場合
