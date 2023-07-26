# 対称性とネーターの定理

## 本章で学ぶこと

系を少しだけ変化させる微小正準変換を考え、微小正準変換によりハミルトニアンが変化しなければ(変化が高次であれば)対応する母関数が保存量になるというネーターの定理について学ぶ。
さらに、時間発展も正準変換であり、平行移動や回転と同様に扱えることを見る。

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

与えられたハミルトニアンに循環座標が含まれない場合でも、変数変換により循環座標が現れる場合がある。一次元空間中に質量$m$の質点AとBがあり、相対距離だけに依存するポテンシャルで相互作用しているとしよう。質点A、Bの座標を$q^A, q^B$、運動量を$p_A, p_B$とすると、この系のハミルトニアンは

$$
H(q^A, q^B, p_A, p_B) = \frac{1}{2m}(p_A^2+p_A^2) + U(q^A-q^B)
$$

で表すことができる。このハミルトニアンは、座標$q_A, q_B$の両方を含むため、循環座標は存在しない。ここで、

$$
\begin{aligned}
Q^1 &= \frac{q^A + q^B}{2}\\
Q^2 &= \frac{q^A - q^B}{2}
\end{aligned}
$$

という変換を考えよう。$Q^1$は重心座標である。対応する運動量が

$$
\begin{aligned}
P_1 &= p_A+p_B \\
P_2 &= p_A-p_B \\
\end{aligned}
$$

になることに注意すると、新しいハミルトニアンは

$$
H(Q^1, Q^2, P_1, P_2) = \frac{1}{4m}(P_1^2+P_2^2) + U(Q^2)
$$

となり、ハミルトニアンは$Q^1$を含まなくなる。そこから直ちに共役な運動量である$P^1$の時間微分がゼロ、すなわち保存量となることがわかる。これは、相互作用が相対距離にのみ依存する系では、重心の運動量が保存量となることを示す。

角運動量保存についても同様である。二次元空間$(x,y)$において、原点からの距離$r=\sqrt{x^2+y^2}$にのみ依存するポテンシャルに支配された運動を考える。

## 微小変換とネーターの定理

繰り返しになるが、系の運動はハミルトニアンというスカラー関数一つだけから全て決まる。したがって、ハミルトニアンには、系の運動の情報、特に対称性や保存則についての情報が含まれている。そのうち、最も簡単なものは循環座標であり、ハミルトニアンが、ある一般化座標$q^i$に依存しなければ、対応する正準共役な運動量$p_i$が保存量となる。ここでは、その逆、ハミルトニアンと交換する物理量があれば、その量と共役な座標の変換に対してそれが不変量となることを見よう。

例えば、ハミルトニアンが時間を陽に含んでいなければ、時間の基準を変える変換$t \rightarrow t + h$について、ハミルトニアンは形を変えない。これを時間並進対称性と呼ぶ。この時、$t$と共役な量であるエネルギーが保存量となる。

多数の粒子が相互作用している時、その粒子間にかかる力が相対距離にのみ依存する場合、位置に関する並進移動$x \rightarrow x + h$についてハミルトニアンは形を変えない。これを空間並進対称性と呼ぶ。この時、位置$x$と共役な量である運動量$p_x$が保存量となる。

全く同様にして、系が回転対称性を持っていれば、回転角に共役な角運動量が保存量となる。

ポアソン括弧の章で述べたように、なんらかの連続変換は、その変換量が小さい時、「変換の向き」と「変換の大きさ」に分けることができる。さて、正準変換は、その変換が小さい場合、あやはり「変換の向き」と「変換の大きさ」に分けることができる。この時、ハミルトニアンの持つ保存量は、微小変換の「変換の向き」と密接な関係があることがわかる。以下、これを見ていこう。

まず、微小な正準変換とはどういうものであるかを考えよう。そのため、恒等変換を与える母関数$W_2(q,P)=qP$に対して、

$$
W = qP + \varepsilon J(q,P)
$$

と、$O(\varepsilon)$だけ何かを加えた母関数を考える。すると、これは$O(\varepsilon)$の微小正準変換を引き起こすことが期待される。この母関数による正準変換は以下のようになる。

$$
\begin{aligned}
p &= \frac{\partial W}{\partial q} = P + \varepsilon \frac{\partial}{\partial q}J(q,P) \\
Q &= \frac{\partial W}{\partial P} = q + \varepsilon \frac{\partial}{\partial P}J(q,P) \\
\end{aligned}
$$

これを$(Q,P)$を$(q,p)$で表す形に変形したい。

まず、

$$
P = p - O(\varepsilon)
$$

であるから、

$$
\begin{aligned}
J(q,P) &= J(q,p - O(\varepsilon)) \\
&= J(q,p) - O(\varepsilon)
\end{aligned}
$$

また、$P$が$(q,p)$の関数であることから、$J$は$J(q,P(q,p))$と書けるので、

$$
\begin{aligned}
\frac{\partial}{\partial p}J(q,P(q,p)) &=
\frac{\partial J}{\partial P}\frac{\partial P}{\partial p} \\
&= \frac{\partial J}{\partial P} \left(1 - O(\varepsilon)\right) \\
&= \frac{\partial J}{\partial P} - O(\varepsilon)
\end{aligned}
$$

つまり、$J(q,P)$を$J(q,p)$で置き換えたり、$\partial_P J$を$\partial_p J$で置き換えたりすると、$O(\varepsilon)$の誤差が生じるのであるから、先程の変換則に代入して整理すると、

$$
\begin{aligned}
Q &= q + \varepsilon \frac{\partial}{\partial p}J(q,p) + O(\varepsilon^2)\\
P &= p - \varepsilon \frac{\partial}{\partial q}J(q,p) + O(\varepsilon^2)\\
\end{aligned}
$$

を得る。すなわち、「現時点」での変数$(q,p)$に対して、その変数で表現されたスカラー関数$J(q,p)$がある時、そのスカラー関数により生成される微小正準変換は上記で与えられる。

この変換が正準変換を与えることを確認しておこう。

$$
\begin{aligned}
\begin{vmatrix}
\partial_q Q & \partial_p Q \\
\partial_q P & \partial_p P
\end{vmatrix}
&=
\begin{vmatrix}
1 + \varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p} &  \varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p}\\
-\varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p}  &
1 - \varepsilon \displaystyle\frac{\partial^2 J}{\partial q \partial p}
\end{vmatrix} \\
&= 1
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

以後、母関数J$に様々なものを入れてみよう。

まず、$J$としてハミルトニアン$H$を入れてみよう。

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

次に、空間並進操作を考えよう。相対距離に依存する相互作用をする二粒子系を考える。

$$
H = \frac{1}{2m}(p_1^2 + p_2^2) + U(r)
$$

ただし$r = |q^1 - q^2|$とする。

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

要するに、座標を正の方向に$\varepsilon$だけずらす、空間並進操作となっている。今、ハミルトニアンは座標の相対距離にしか依存しないから、この変換においてハミルトニアンは変化しない。したがって、この変換を生み出す母関数$J = p^1+p^2$、すなわち重心の運動量は保存量となる。

TODO: $L_z = x p_y - y p_x$に対する正準変換について紹介する。

回転に対しても、全く同様に理解することができる。系に回転対称性がある場合、その回転角に共役な角運動量が保存量となる。

## まとめ

TODO: 書く