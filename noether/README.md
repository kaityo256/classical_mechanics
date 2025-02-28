# 対称性とネーターの定理

## 本章で学ぶこと

系を少しだけ変化させる微小正準変換を考え、微小正準変換によりハミルトニアンが変化しなければ(変化が高次であれば)対応する母関数が保存量になるというネーターの定理について学ぶ。さらに、時間発展も正準変換であり、平行移動や回転と同様に扱えることを見る。

## ハミルトニアンと対称性

ニュートンの運動方程式では、発見法的に保存則を見つけていた。しかし、全ての運動方程式がただひとつのハミルトニアンから導出されるのであるから、系に存在する保存量の情報もハミルトニアンに含まれるはずである。それを見ていこう。

まず、二次元空間中の質点の自由運動を考えよう。質点の質量を$m$とし、座標を$(q^x, q^y)$、運動量を$(p_x, p_y)$とすると、ハミルトニアンは

$$
H = \frac{1}{2m}(p_x^2+p_y^2)
$$

となる。さて、ハミルトンの運動方程式より

$$
\begin{aligned}
\dot{p}_x &= -\frac{\partial H}{\partial q^x} = 0 \\
\dot{p}_y &= -\frac{\partial H}{\partial q^y} = 0
\end{aligned}
$$

と、$p_x$および$p_y$が保存されることがわかる。運動量の時間微分は、ハミルトニアンを共役な座標で偏微分することで得られるから、ハミルトニアンに座標が陽に含まれない場合はただちに保存量となることがわかる。このように、ハミルトニアンに陽に含まれない座標を **循環座標(cyclic coordinate)** と呼び、その共役な運動量が保存量となる。

与えられたハミルトニアンに循環座標が含まれない場合でも、変数変換により循環座標が現れる場合がある。一次元空間中に質量$m$の質点1と2があり、相対距離だけに依存するポテンシャルで相互作用しているとしよう。質点1、2の座標を$q^1, q^2$、運動量を$p_1, p_2$とすると、この系のハミルトニアンは

$$
H(q^1, q^2, p_1, p_2) = \frac{1}{2m}(p_1^2+p_2^2) + U(q^1-q^2)
$$

で表すことができる。このハミルトニアンは、座標$q_1, q_2$の両方を含むため、循環座標は存在しない。ここで、

$$
\begin{aligned}
Q^1 &= \frac{q^1 + q^1}{2}\\
Q^2 &= \frac{q^1 - q^2}{2}
\end{aligned}
$$

という変換を考えよう。$Q^1$は重心座標である。$q^1, q^2$を$Q^1, Q^2$について逆に解くと、

$$
\begin{aligned}
q^1 &= Q^1 + Q^2\\
q^2 &= Q^1 - Q^2
\end{aligned}
$$

両辺を時間微分すると、

$$
\begin{aligned}
\dot{q}^1 &= \dot{Q}^1 + \dot{Q}^2\\
\dot{q}^2 &= \dot{Q}^1 - \dot{Q}^2
\end{aligned}
$$

運動量の定義から、

$$
\begin{aligned}
P_1 &= \frac{\partial L}{\partial \dot{Q}^1}\\
&= \underbrace{\frac{\partial L}{\partial \dot{q}^1}}_{p_1} \underbrace{\frac{\partial \dot{q}^1}{\partial \dot{Q}^1}}_{1} + \underbrace{\frac{\partial L}{\partial \dot{q}^2}}_{p_1} \underbrace{\frac{\partial \dot{q}^2}{\partial \dot{Q}^1}}_{1} \\
&= p_1 + p_2
\end{aligned}
$$

同様に、

$$
P_2 = p_1 - p_2
$$

$p_1, p_2$について解くと

$$
\begin{aligned}
p_1 &= \frac{P_1 + P_2}{2}\\
p_2 &= \frac{P_1 - P_2}{2}\\
\end{aligned}
$$

これらを用いると、新しいハミルトニアンは

$$
H(Q^1, Q^2, P_1, P_2) = \frac{1}{4m}(P_1^2+P_2^2) + U(2Q^2)
$$

となり、ハミルトニアンは$Q^1$を含まなくなる。そこから直ちに共役な運動量である$P_1$の時間微分がゼロ、すなわち保存量となることがわかる。これは、相互作用が相対距離にのみ依存する系では、重心の運動量$P_1 = p_1+p_2$が保存量となることを示す。

角運動量保存についても同様である。二次元空間$(x,y)$において、原点からの距離$r=\sqrt{x^2+y^2}$にのみ依存するポテンシャルに支配された運動を考える。この系のラグランジアンを極座標表示すると、

$$
L = \frac{1}{2}m(\dot{r}^2 + r^2\dot{\theta}^2) - U(r)
$$

となるから、ハミルトニアンは

$$
\begin{aligned}
p_r &= \frac{\partial L}{\partial \dot{r}} = m\dot{r}\\
p_\theta &= \frac{\partial L}{\partial \dot{\theta}} = mr^2\dot{\theta}\\
\end{aligned}
$$

を用いて、

$$
\begin{aligned}
H &= p_r \dot{r} + p_\theta \dot{\theta} - L\\
&= \frac{p_r^2}{m}+\frac{p_\theta^2}{mr^2} - \frac{p_r^2}{2m} - \frac{p_\theta^2}{2mr^2} + U(r) \\
&= \frac{1}{2m}\left(p_r^2 + \frac{p_\theta^2}{r^2} \right) + U(r)
\end{aligned}
$$

明らかにハミルトニアンは$\theta$に依存しないため、

$$
\dot{p_\theta} = - \frac{\partial H}{\partial \theta} = 0
$$

すなわち、$\theta$に対応する一般化運動量が保存量となることがわかる。

さて、この系では各運動量

$$
L_z = m(x\dot{y} - y \dot{x})
$$

が時間不変量であった。極座標表示から

$$
\begin{aligned}
x &= r \cos \theta \\
y &= r \sin \theta
\end{aligned}
$$

両辺時間微分すると、

$$
\begin{aligned}
\dot{x} &= \dot{r} \cos \theta - r \dot{\theta} \sin \theta\\
\dot{y} &= \dot{r} \sin \theta + r \dot{\theta} \cos \theta
\end{aligned}
$$

両辺に$y$や$x$をかけると、

$$
\begin{aligned}
y\dot{x} &= r\dot{r} \cos \theta \sin \theta - r^2 \dot{\theta} \sin^2 \theta\\
x\dot{y} &= r\dot{r} \sin \theta \cos \theta + r^2 \dot{\theta} \cos^2 \theta
\end{aligned}
$$

従って、

$$
L_z = m(x\dot{y} - y \dot{x}) = mr^2 \dot{\theta} = p_\theta
$$

すなわち、一般化座標$\theta$に対応する一般化運動量$p_\theta$は、角運動量に対応する。すなわち$\dot{p}_\theta = 0$は角運動量保存則に他ならない。

## 微小変換とネーターの定理

繰り返しになるが、系の運動はハミルトニアンというスカラー関数一つだけから全て決まる。したがって、ハミルトニアンには、系の運動の情報、特に対称性や保存則についての情報が含まれている。そのうち、最も簡単なものは循環座標であり、ハミルトニアンが、ある一般化座標$q^i$に依存しなければ、対応する正準共役な運動量$p_i$が保存量となる。ここでは、その逆、ハミルトニアンと交換する物理量があれば、その量と共役な座標の変換に対してそれが不変量となることを見よう。

例えば、ハミルトニアンが時間を陽に含んでいなければ、時間の基準を変える変換$t \rightarrow t + h$について、ハミルトニアンは形を変えない。これを時間並進対称性と呼ぶ。この時、$t$と共役な量であるエネルギーが保存量となる。

多数の粒子が相互作用している時、その粒子間にかかる力が相対距離にのみ依存する場合、位置に関する並進移動$x \rightarrow x + h$についてハミルトニアンは形を変えない。これを空間並進対称性と呼ぶ。この時、位置$x$と共役な量である運動量$p_x$が保存量となる。

全く同様にして、系が回転対称性を持っていれば、回転角に共役な角運動量が保存量となる。

ポアソン括弧の章で述べたように、なんらかの連続変換は、その変換量が小さい時、「変換の向き」と「変換の大きさ」に分けることができる。さて、正準変換は、その変換が小さい場合、やはり「変換の向き」と「変換の大きさ」に分けることができる。この時、ハミルトニアンの持つ保存量は、微小変換の「変換の向き」と密接な関係があることがわかる。以下、これを見ていこう。

まず、微小な正準変換とはどういうものであるかを考えよう。そのため、恒等変換を与える母関数$W_2(q,P)=qP$に対して、

$$
W = qP + \varepsilon J(q,P)
$$

と、$O(\varepsilon)$だけ何かを加えた母関数を考える。すると、これは$O(\varepsilon)$の微小正準変換を引き起こすことが期待される。この母関数による正準変換は以下のようになる。

$$
\begin{aligned}
Q &= \frac{\partial W}{\partial P} = q + \varepsilon \frac{\partial}{\partial P}J(q,P) \\
p &= \frac{\partial W}{\partial q} = P + \varepsilon \frac{\partial}{\partial q}J(q,P)
\end{aligned}
$$

これを$(Q,P)$を$(q,p)$で表す形に変形したい。

まず、

$$
h \equiv \frac{\partial}{\partial q}J(q, P)
$$

と定義しよう。すると、

$$
\begin{aligned}
Q &= q + \varepsilon h \\
P &= p - \varepsilon h
\end{aligned}
$$

と書ける。

ここで、

$$
\begin{aligned}
J(q, P) &= J(q, p - \varepsilon h) \\
&= J(q,p) -\varepsilon h \frac{\partial}{\partial p} J(q,p) \\
&= J(q,p) + O(\varepsilon)
\end{aligned}
$$

従って、

$$
\begin{aligned}
Q &= \frac{\partial W}{\partial P} \\
& = q + \varepsilon \frac{\partial}{\partial P}J(q,P) \\
&= q + \varepsilon \left(\frac{\partial}{\partial p} J(q,p) +O(\varepsilon) \right) \\
&= q + \varepsilon \frac{\partial}{\partial p}J(q,p) + O(\varepsilon^2)
\end{aligned}
$$

と、$Q$を$(q,p)$だけで表現できた。同様に、

$$
P = p - \varepsilon \frac{\partial}{\partial p}J(q,p) + O(\varepsilon^2)
$$

となる。2式をあわせて

$$
\begin{aligned}
Q &= q + \varepsilon \frac{\partial}{\partial p}J(q,p)\\
P &= p - \varepsilon \frac{\partial}{\partial q}J(q,p)
\end{aligned}
$$

すなわち、**現時点での** 変数$(q,p)$に対して、その変数で表現されたスカラー関数$J(q,p)$が与えられた時、そのスカラー関数により生成される微小正準変換は上記で与えられる。

この変換が正準変換を与えることを確認しておこう。

$$
\begin{aligned}
\begin{vmatrix}
\partial_q Q & \partial_p Q \\
\partial_q P & \partial_p P
\end{vmatrix}
&=
\begin{vmatrix}
1 + \varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p} &  \varepsilon \displaystyle\frac{\partial^2 J}{\partial p^2}\\
-\varepsilon \displaystyle\frac{\partial^2 J}{\partial q^2}  &
1 - \varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p}
\end{vmatrix} \\
&= 1 + O(\varepsilon^2)
\end{aligned}
$$

すなわち、この変換は$O(\varepsilon)$までの範囲で正準変換を与える。

さて、母関数$J$によって生成される微小正準変換により、ハミルトニアンが変化しないならば、その母関数$J$は時間不変量となることが示される。

以下の微小正準変換$(q,p) \rightarrow (Q,P)$を考えよう。

$$
\begin{aligned}
Q &= q + \varepsilon \frac{\partial J}{\partial p}\\
P &= p - \varepsilon \frac{\partial J}{\partial q}\\
\end{aligned}
$$

この変換により、ハミルトニアンが$H(q,p)$から$H(Q,P)$に変化する。この時、

$$
\begin{aligned}
H(Q, P) &= H\left(q + \varepsilon \frac{\partial J}{\partial p}, p - \varepsilon \frac{\partial J}{\partial q} \right) \\
&= H(q,p) + \varepsilon \frac{\partial H}{\partial q}\frac{\partial J}{\partial p} - \varepsilon \frac{\partial H}{\partial p}\frac{\partial J}{\partial q} + O(\varepsilon^2)\\
&= H(q,p) + \varepsilon \{H,J\} + O(\varepsilon^2)
\end{aligned}
$$

すなわち、この微小正準変換において、ハミルトニアンの変化分は高次の項を無視すると、

$$
\delta H = H(Q,P) - H(q,p) = \varepsilon \{H,J\}
$$

となる。この差がゼロであるならば

$$
\{H,J\} = 0
$$

ハミルトニアンとのポアソン括弧は時間微分を意味するのであったから、

$$
\dot{J} = \{J, H\} = 0
$$

すなわち、母関数$J$が時間不変量であることが示された。以上をまとめると、何か連続的な変化を引き起こす操作がある時、その変化が小さい場合にハミルトニアンの変化分が高次となるならば、その操作に対応する保存量が存在することになる。この事実を　**ネーターの定理(Noether's theorem)**　と呼ぶ。

母関数$J$として様々な物理量を入れてみよう。まず、$J$としてハミルトニアン$H$を入れてみる。

$$
\begin{aligned}
Q &= q + \varepsilon \frac{\partial H}{\partial p} = q + \varepsilon \dot{q} \\
P &= p - \varepsilon \frac{\partial H}{\partial q} = p + \varepsilon \dot{p} \\
\end{aligned}
$$

これと、時刻$t+\varepsilon$における正準変数を比較しよう。

$$
\begin{aligned}
q(t+\varepsilon) &= q + \varepsilon \dot{q} + O(\varepsilon^2)\\
p(t+\varepsilon) &= p + \varepsilon \dot{p} + O(\varepsilon^2)\\
\end{aligned}
$$

すなわち、ハミルトニアンを母関数とする微小正準変換は、時間並進操作、つまり時間発展を表している。

ハミルトニアンは、当然ハミルトニアン自身と可換である。

$$
\{H, H\} = 0
$$

したがって、ハミルトニアンは時間の並進操作$t \rightarrow t + \varepsilon$に対して保存量となる。これは、正準方程式が、時間を連続パラメータとして、ハミルトニアンを母関数とする正準変換を表していることを意味する。

次に、空間並進操作を考えよう。先ほど考えた相対距離に依存する相互作用をする二粒子系を考える。

$$
H = \frac{1}{2m}(p_1^2 + p_2^2) + U(q^1-q^2)
$$

ここで、母関数として二粒子の運動量の和を考える。

$$
J = p_1 + p_2
$$

この母関数による微小正準変換は以下のようになる。

$$
\begin{aligned}
Q^1 &= q^1 + \varepsilon \\
P_1 &= p_1\\
Q^2 &= q^2 + \varepsilon \\
P_2 &= p_2\\
\end{aligned}
$$

要するに、座標を正の方向に$\varepsilon$だけずらす、空間並進操作となっている。今、ハミルトニアンは座標の相対距離にしか依存しないから、

$$
Q^1 - Q^2 = q^1 - q^2
$$

また、運動量は変化しないから、

$$
\begin{aligned}
H &= \frac{1}{2m}(p_1^2 + p_2^2) + U(q^1-q^2) \\
&= \frac{1}{2m}(P_1^2 + P_2^2) + U(Q^1-Q^2)
\end{aligned}
$$

従って、この変換においてハミルトニアンは変化しない。すなわち、

$$
\delta H \equiv H(Q^1, Q^2,P_1, P_2) -H(q^1, q^2,p_1, p_2) = 0
$$

である。

したがって、この変換を生み出す母関数$J = p^1+p^2$、すなわち重心の運動量は保存量となる。ポアソン括弧に入れて確かめてみよう。

$$
\begin{aligned}
\{J, H\} &= \{p_1+p_2, H\}\\
&= \{p_1, H\} +  \{p_2, H\}
\end{aligned}
$$

ここで、

$$
\begin{aligned}
\{p_1, H\} &= \underbrace{\frac{\partial p_1}{\partial q^i}}_{=0}\frac{\partial H}{\partial p_i} - \underbrace{\frac{\partial p_1}{\partial p_i}}_{\delta_1^i}\frac{\partial H}{\partial q^i} \\
&= -\frac{\partial H}{\partial q^1}
\end{aligned}
$$

同様に、

$$
\{p_2, H\} = -\frac{\partial H}{\partial q^2}
$$

ここで、ポテンシャルの形から、

$$
\begin{aligned}
\frac{\partial H}{\partial q^1} &= \frac{dU}{dr} \frac{\partial r}{\partial q^1} = U'(r) \frac{(q^1 - q^2)}{r} \\
\frac{\partial H}{\partial q^2} &= \frac{dU}{dr} \frac{\partial r}{\partial q^2} = U'(r) \frac{(q^2 - q^1)}{r}
\end{aligned}
$$

従って、

$$
\begin{aligned}
\{J, H\} &= \{p_1+p_2, H\} \\
&= \{p_1, H\} +  \{p_2, H\} \\
&= - U'(r) \frac{(q^1 - q^2)}{r} - U'(r)\frac{(q^2 - q^1)}{r} \\
&=0
\end{aligned}
$$

すなわち、重心の運動量$J=p_1 + p_2$は保存量である。このように、ポアソン括弧により保存することを確認できるが、ハミルトニアンが変化しないことを確認した方が簡便である。

回転対称性についても同様に理解することができる。以下のような中心力ポテンシャルに依存する系を考える。

$$
H = \frac{1}{2m}(p_1^2 + p_2^2) + U(r)
$$

先ほどと形が似ているが、今回は

$$
r = \sqrt{(q^1)^2 + (q^2)^2}
$$

であることに注意。ここで、母関数として$z$軸周りの角運動量を選ぶ。

$$
J = q^1 p_2 - q^2 p_1
$$

これによる微小正準変換は

$$
\begin{aligned}
Q^1 &= q^1 + \varepsilon \frac{\partial J}{\partial p_1} = q^1 - \varepsilon q^2\\
Q^2 &= q^2 + \varepsilon \frac{\partial J}{\partial p_2} = q^2 + \varepsilon q^1\\
P_1 &= p_1 - \varepsilon \frac{\partial J}{\partial q^1} = p_1 - \varepsilon p_2 \\
P_2 &= p_2 - \varepsilon \frac{\partial J}{\partial q^2} = p_2 + \varepsilon p_1 \\
\end{aligned}
$$

ここで$R=\sqrt{(Q^1)^2+(Q^2)^2}$として、ハミルトニアンの微小変化は

$$
\begin{aligned}
\delta H & \equiv H(Q^1,Q^2, P_1, P_2) - H(q^1,q^2,p_1,p_2) \\
&= \frac{1}{2}(P_1^2+P_2^2) -\frac{1}{2}(p_1^2+p_2^2) + U(R) - U(r)
\end{aligned}
$$

ここで、

$$
\begin{aligned}
P_1^2 + P_2^2 &= (p_1 - \varepsilon p_2)^2 + (p_2 + \varepsilon p_1)^2 \\
&= p_1^2 + p_2^2 + \varepsilon^2 (p_1^2 + p_2^2) \\
&= p_1^2 + p_2^2 + O(\varepsilon^2)
\end{aligned}
$$

$$
\begin{aligned}
R &= \sqrt{(Q^1)^2+(Q^2)^2} \\
&= \sqrt{(q^1 - \varepsilon q^2)^2 + (q^2 + \varepsilon q^1)^2}\\
&= \sqrt{(q^1)^2+(q^2)^2+ \varepsilon^2\left((q^1)^2+(q^2)^2\right)}\\
&= \sqrt{r^2 + \varepsilon^2 r^2}\\
&= \sqrt{1+\varepsilon^2} r \\
&= r + \frac{\varepsilon^2r}{2} + O(\varepsilon^4)
\end{aligned}
$$

$$
\begin{aligned}
U(R) &= U(r + \varepsilon^2 r/2)\\
&= U(r) + U'(r)\frac{\varepsilon^2r}{2}\\
&= U(r) + O(\varepsilon^2)
\end{aligned}
$$

以上から、

$$
\delta H \equiv H(Q^1,Q^2, P_1, P_2) - H(q^1,q^2,p_1,p_2)= O(\varepsilon^2)
$$

となり、ハミルトニアンの変化が高次であること、すなわち、この母関数$J$が保存量であることがわかる。これは、直接ポアソン括弧による交換関係を調べることでも確認することができる。

ハミルトニアンの形が

$$
H = \frac{1}{2m}(p_1^2+p_2^2) + U(r)
$$

であることに注意して、まず$\{q^1 p_2, H\}$を計算する。

$$
\begin{aligned}
\{q^1 p_2, H\} &= \frac{\partial (q^1 p_2)}{\partial q^i}\frac{\partial H}{\partial p_i} - \frac{\partial (q^1 p_2)}{\partial p_i}\frac{\partial H}{\partial q^i} \\
&= p_2 \frac{\partial H}{\partial p_1} - q^1 \frac{\partial H}{\partial q^2} \\
&= \frac{p_1 p_2}{m} - U'(r) \frac{q_1 q_2}{r}
\end{aligned}
$$

同様に$\{q^2 p_1, H\}$も、

$$
\{q^2 p_1, H\} = \frac{p_1 p_2}{m} - U'(r) \frac{q_1 q_2}{r}
$$

となるため、

$$
\begin{aligned}
\{J, H\} &= \{q^1 p_2 - q^2 p_1, H\} \\
&= \{q^1 p_2, H\} - \{q^2 p_1, H\}\\
&= 0
\end{aligned}
$$

である。

## まとめ

系を少しだけ変化させる微小正準変換を考えた。この正準変換を引き起こす母関数$J$は、回転や時間発展などの、有限の変化を引き起こす操作に対する生成子になっている。この生成子により引き起こされるハミルトニアンの変化が高次であるとき、この生成子は保存する。すなわち、対称性とは「微小な変化を引き起こす操作に対して、ハミルトニアンが不変であること」と定義することができる。これをネーターの定理と呼ぶ。ハミルトニアンの変化が高次であることと、変化を引き起こす母関数$J$がハミルトニアンと交換することは等価である。これにより、「なぜ系の時間発展によってエネルギーが保存するか」という問いに対して、「時間発展を引き起こす生成子がハミルトニアン自身であり、ハミルトニアンは自身と交換可能であるから」と答えることができる。我々はエネルギー保存則に対して、位相空間とリュービルの定理の章で得た見方とは、また異なる視点を得たことがわかる。また、母関数$J$として並進運動量を選ぶと運動量保存則が、角運動量を選ぶと角運動量保存則が導かれる。こうして、並進、回転、時間発展という異なる操作が「なにかを少し動かすという操作」として統一的に理解され、それらによってハミルトニアンが変化しないならば、その操作に対応する保存則が存在することがわかる。

## コラム：全ては◯◯に過ぎない病

研究者は何かの分野を愛するあまり「全ては◯◯に過ぎない」と言ってしまいがちである。ポアソン括弧の章で代数の行列表現を紹介したが、このように代数構造をベクトル空間の線形変換として表現する学問を表現論と呼ぶ。群論の美しさに魅せられ、熱っぽくその素晴らしさを説く様子は流行り病になぞらえて群論病(Gruppenpest)と呼ばれた。群論病というと、私の大学院時代の同期が罹患したのを思い出す。深夜の研究室、一人作業していると、突然彼(別の研究室で、彼も夜型だった)が部屋にやってきて、ひとしきり群論の素晴らしさを熱弁し、「全ては表現なんだ」と言って去っていった。同様な病に「場の理論病」もあるそうだ。場の理論の素晴らしさに感動し、全てを場として考えてしまう病気である。物性理論を専門とする某教授は、場の理論を学んだ時にいたく感動し、彼女とのデートで「僕も君も場に過ぎないんだ」と口走ってフラれてしまったという。私はそのような患者を生温かい目で見ていたが、気がついたら講義で「全ては正準変換に過ぎない」と口走り、後で「あぁ、自分も『全ては◯◯に過ぎない』病に罹患していた」と自覚して落ち込んでしまった。でもまぁ、何かを学んでいて突然「全ては◯◯に過ぎない」という啓示を受けるのは学問の醍醐味でもあるので、皆さんも怖がらずに「全ては◯◯に過ぎない病」に罹患して欲しい。大丈夫、すぐにその熱は冷めるから。
