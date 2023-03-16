# ポアソン括弧

## 本章の目的

解析力学を学ぶ目的は、現象に対して異なる見方を獲得することである。その重要な例が「時間発展とは回転の一種である」と認識することだ。本章では、ポアソン括弧を定義し、リー代数という代数構造から自然に回転という概念が生まれることを見る。物理学の重要な要請の一つに、物理法則が座標の取り方に依らない、というものがある。それなら最初から座標を使わない形で運動方程式を書いてしまえばよい。ポアソン括弧は座標を用いない形を与える。

* ポアソン括弧
* Lie代数
* 三次元回転

## ポアソン括弧

1自由度系における正準方程式を考えよう。

$$
\begin{aligned}
\dot{p} &= -\frac{\partial H}{\partial q} \\
\dot{q} &= \frac{\partial H}{\partial p}
\end{aligned}
$$

この系は$q,p$という正準変数によって記述されており、この系の全ての物理量は$q,p$の関数として表現される。例えば運動エネルギーなら$K(q,p) = p^2/2m$である。ある物理量$A(q,p)$を考えよう。この物理量を時間微分すると、

$$
\frac{dA}{dt} = \frac{\partial A}{\partial q}\dot{q} + \frac{\partial A}{\partial p}\dot{p}
$$

正準方程式を使って$\dot{p}, \dot{q}$を消去すると、

$$
\begin{aligned}
\frac{dA}{dt} &= \frac{\partial A}{\partial q}\frac{\partial H}{\partial p} -\frac{\partial A}{\partial p}\frac{\partial H}{\partial q}
\end{aligned}
$$

この式の右辺を見ると、$p,q$や$H,A$が対称な形に入っていることがわかる。そこで、以下のような括弧式を定義する。

$$
\left\{X, Y\right\} \equiv -\frac{\partial X}{\partial p}\frac{\partial Y}{\partial q} + \frac{\partial X}{\partial q}\frac{\partial H}{\partial Y}
$$

これを用いると、

$$
\frac{dA}{dt} = \left\{A, H\right\}
$$

と書ける。この括弧を **ポアッソン括弧(Poisson bracket)** と呼ぶ。ポアッソン括弧を用いると、正準方程式は

$$
\begin{aligned}
\dot{p} &= \left\{p, H\right\} \\
\dot{q} &= \left\{q, H\right\}
\end{aligned}
$$

と書ける。$Y$という量から$\{X, Y\}$という量を作ることを、「$Y$の左から$X$とのポアッソン括弧をとる」と表現しよう。同様に$\{Y, X\}$は$Y$の右から$A$とのポアッソン括弧をとったものである。

すると、「ある物理量$A$について、右からハミルトニアン$H$とのポアッソン括弧をとること」が、「時間$t$で微分すること」に対応していることがわかる。ここでは時間微分からポアッソン括弧を定義したが、後に見るように、右からある物理量とのポアッソン括弧をとることは、その量と正準共役な量でで微分することに対応する。つまり、ポアッソン括弧は時間微分よりも広い概念を含んでおり、それ故に様々なことがわかる。

さて、ポアッソン括弧の物理的な意味を見る前に、ポアッソン括弧が満たす性質を調べておこう。

まず、括弧に入れる変数を入れ替えると負符号がつく。

$$
\left\{X, Y\right\} = - \left\{Y, X\right\}
$$

これを反対称性と呼ぶ。

また、定数は括弧の外に出すことができる。

$$
\left\{a X, Y\right\} = a \left\{X, Y\right\}
$$

$$
\left\{X, bY\right\} = b \left\{X, Y\right\}
$$

さらに分配法則がなりたつ。

$$
\left\{X + Y , Z\right\} = \left\{X, Z\right\} + \left\{X, Y\right\}
$$

$$
\left\{X, Y+Z\right\} = \left\{X, Y\right\} + \left\{X, Z\right\}
$$

定数倍を外に出せることと、分配法則をまとめると以下の式が成り立つ。

$$
\left\{a X + bY , Z\right\} = a \left\{X, Y\right\} + b  \left\{Y, Z\right\}
$$

$$
\left\{X, aY + bZ\right\} = a \left\{X, Y\right\} + b  \left\{X, Z\right\}
$$

つまり、括弧の左側や右側に入れるものは線形性が成り立つ。括弧の両側で線形性が成り立っているため、これを双線形性と呼ぶ。

関数の積の微分は、ライプニッツ則により以下のように分解できるのであった。

$$
\frac{d}{dx} (fg) = f'g + fg'
$$

ポアッソン括弧も微分を含むことから、括弧に関数の積を入れるとライプニッツ則により分解することができる。

$$
\left\{XY , Z\right\} = X \left\{Y, Z\right\} + \left\{X, Z\right\} Y
$$

$$
\left\{X , YZ\right\} = \left\{X, Y\right\}Z + Y\left\{X, Z\right\}
$$

これらの性質は定義から容易に導けるものであるが、非自明な性質として、以下の恒等式が成り立つ。

$$
\left\{X , \left\{Y, Z\right\}\right\} +
\left\{Y , \left\{Z, X\right\}\right\} +
\left\{Z , \left\{X, Y\right\}\right\} = 0
$$

TODO: Lie積によりLie環が定義されることを見る。
TODO: 結合法則を満たさない事を見る
TODO: 群と環の話を書く。
