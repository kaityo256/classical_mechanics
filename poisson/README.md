# ポアソン括弧

## 本章の目的

物理学の重要な要請の一つに、物理法則が座標の取り方に依らない、というものがある。それなら最初から座標を使わない形で運動方程式を書いてしまえばよい。ポアソン括弧は運動方程式の座標を用いない形を与える。

## ポアソン括弧

1自由度系における正準方程式を考えよう。

$$
\begin{aligned}
\dot{q} &= \frac{\partial H}{\partial p} \\
\dot{p} &= -\frac{\partial H}{\partial q}
\end{aligned}
$$

この系は$q,p$という正準変数によって記述されており、この系の全ての物理量は$q,p$の関数として表現される。例えば運動エネルギーなら$K(q,p) = p^2/2m$である。ある物理量$A(q,p)$を考えよう。この物理量を時間微分すると、

$$
\frac{dA}{dt} = \frac{\partial A}{\partial q}\dot{q} + \frac{\partial A}{\partial p}\dot{p}
$$

正準方程式を使って$\dot{p}, \dot{q}$を消去すると、

$$
\frac{dA}{dt} = \frac{\partial A}{\partial q}\frac{\partial H}{\partial p} -\frac{\partial A}{\partial p}\frac{\partial H}{\partial q}
$$

この式の右辺を見ると、$q,p$や$H,A$が対称な形で含まれていることがわかる。そこで、以下のような括弧式を定義する。

$$
\left\{X, Y\right\}_{q,p} \equiv \frac{\partial X}{\partial q}\frac{\partial Y}{\partial p} - \frac{\partial X}{\partial p}\frac{\partial Y}{\partial q}
$$

括弧の添字の$q,p$は、この変数で微分する、という意味である。これを用いると、物理量$A$の時間微分は

$$
\frac{dA}{dt} = \left\{A, H\right\}_{q,p}
$$

と書くことができる。この括弧を **ポアソン括弧(Poisson bracket)** と呼ぶ。

さて、実はポアソン括弧は正準変数に対して不変でこと、すなわち、ある正準変数の組$(q,p)$が、正準変換により別の正準変数の組$(q,p)$に変換される時、$(q,p)$で定義したポアソン括弧式と、$(q,p)$で定義したポアソン括弧式は等しいことを示そう。

TODO: ポアソン括弧の不変性


したがって、ポアソン括弧式は正準変換で移り変わることができるいかなる正準変数の組で表現しても同じ値になるため、添字に「どの変数で定義したか」を表記する必要はない。以後、括弧式の変数を省略しよう。

$$
\left\{X, Y\right\}_{q,p} =
\left\{X, Y\right\}_{Q,P} =
\left\{X, Y\right\}
$$

多自由度系$(q^1, q^2, \cdots, q^N, p_1, p_2, \cdots, p_N)$におけるポアソン括弧は

$$
\{X, Y\} = \frac{\partial X}{\partial q^i}\frac{\partial Y}{\partial p_i} -
\frac{\partial X}{\partial p_i} \frac{\partial Y}{\partial q^i}
$$

で表される($i$による和を取っていることに注意)。

ポアソン括弧を用いると、正準方程式は

$$
\begin{aligned}
\dot{p_i} &= \left\{p_i, H\right\} \\
\dot{q^i} &= \left\{q^i, H\right\}
\end{aligned}
$$

と書くことができる。$Y$という量から$\{X, Y\}$という量を作ることを、「$Y$の左から$X$とのポアソン括弧をとる」と表現しよう。同様に$\{Y, X\}$は$Y$の右から$A$とのポアソン括弧をとったものである。すると、「ある物理量$A$について、右からハミルトニアン$H$とのポアソン括弧をとること」が、「時間$t$で微分すること」に対応していることがわかる。

ポアソン括弧式が正準変換に対して不変である事実は重要である。前提として、物理法則は座標のとり方によって形を変えて欲しくない。より正確に言えば、座標を変換した時、物理量が全て同じ様に変換するため、変換前と後で同じ形の式が成立する時、その式は共変性を持つという。我々は既に正準方程式が正準変換に対して形を変えないことを見た。つまり、正準方程式は正準変換に対して共変である。であるならば、運動方程式を表現するのにどのような座標を採用するかは重要ではないのだから、座標を陽に書かない表現が好ましい。もう一度物理量の時間微分を見てみよう。

$$
\frac{dA}{dt} = \left\{A, H\right\}
$$

この式には、座標が陽に現れない。我々が正準変数として$(q,p)$を選んでいようが$(Q,P)$を選んでいようが、この式は形を変えないのだから、座標を気にしなくて良い。後に、この哲学をより押し進めた形の運動方程式を見る。

さて、ポアソン括弧の物理的な意味を見る前に、ポアソン括弧が満たす数学的な性質を調べておこう。

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

ポアソン括弧も微分を含むことから、括弧に関数の積を入れるとライプニッツ則により分解することができる。

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

この恒等式をヤコビ恒等式と呼ぶ。

以上をまとめると、ポアソン括弧は以下の性質を持っている。

* 反対称性
* 双線型性
* ヤコビ恒等式
* ライプニッツルール

このうち、最初の3つの性質(反対称性、双線型性、ヤコビ恒等式)を満たす代数をリー代数と呼ぶ。リー代数については後に簡単に紹介する。

## 交換関係

ポアソンの反対称性から、もしポアソン括弧に入れる物理量を左右入れ替えた時に値が変わらない時、すなわち

$$
\{A, B\} = \{A, B\}
$$

が成り立つ時、そのポアソン括弧の値はゼロに限られることがわかる。

$$
\{X, Y\} = \{Y, X\} \Longleftrightarrow \{X, Y\} = 0
$$

これを、ポアソン括弧の意味で交換可能、あるいは単に可換と呼ぶ。ポアソン括弧に非可換な量を入れると、何かしらの値を持つ。例えば物理量$A, B$をポアソン括弧に入れた値が物理量$C$になった時、

$$
\{A, B\} = C
$$

と書ける。このように、何かしらの物理量をポアソン括弧の入れた結果をまとめて **交換関係(commutation relation)** と呼ぶ。

特に、一般化座標$q^i$と一般化運動量$p_j$の交換関係を調べると

$$
\begin{aligned}
\{q^i, q^j\} &= \frac{\partial q^i}{\partial q^k} \underbrace{\frac{\partial q^j}{\partial p_k}}_{=0} -
\underbrace{\frac{\partial q^i}{\partial p_k}}_{=0} \frac{\partial q^j}{\partial q^k} = 0 \\
\{p_i, p_j\} &= \underbrace{\frac{\partial p_i}{\partial q^k}}_{=0} \frac{\partial p_j}{\partial p_k} -
\frac{\partial p_i}{\partial p_k} \underbrace{\frac{\partial p_j}{\partial q^k}}_{=0}  = 0\\
\{q^i, p_j\} &= \underbrace{\frac{\partial q^i}{\partial q^k}}_{\delta^i_k} \underbrace{\frac{\partial{p_j}}{\partial{p_k}}}_{\delta^k_j}-
\underbrace{\frac{\partial q^i}{\partial p_k}}_{=0}\underbrace{\frac{\partial{p_j}}{\partial{q^k}}}_{=0} \\
&= \delta^i_k \delta^k_j \\
&= \delta^i_j
\end{aligned}
$$

すなわち、正準共役な変数を入れた時にのみ1、それ以外は全てゼロとなる。これを **正準交換関係(canonical commutation relation)** と呼ぶ。

## ポアソン括弧の物理的な意味

ポアソン括弧を用いると、物理量の時間微分が以下のように書けた。

$$
\frac{dA}{dt} = \{A, H\}
$$

つまり、ポアソン括弧の右側にハミルトニアンを入れると、左側に入れた量の時間微分になった。

では、ポアソン括弧の右側に、ハミルトニアンの代わりに別の量、例えば$p$を入れてみよう。

$$
\begin{aligned}
\{A, p\} &= \frac{\partial A}{\partial q} \underbrace{\frac{\partial p}{\partial p}}_{=1} - \frac{\partial A}{\partial q} \underbrace{\frac{\partial p}{\partial q}}_{=0}\\
&= \frac{\partial A}{\partial q}
\end{aligned}
$$

すなわち、ハミルトニアンの右側に一般化運動量$p$を入れると、その変数と共役な一般化座標$q$による微分になった。

同様にして、ハミルトニアンの右側に一般化座標$q$を入れると、

$$
\{A, q\} = -\frac{\partial A}{\partial p}
$$

と、左側に入れた量の$p$偏微分(に負符号をつけたもの)になることがわかる。

さらに、今$(q,p) \rightarrow (Q,P)$が正準変換、すなわち

$$
\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q} = 1 
$$

を満たすとしよう。この時、ポアソン括弧の右側に新しい一般化座標$P$を入れてみると、

$$
\{A, P\} = \frac{\partial A}{\partial q}\frac{\partial P}{\partial p} -  \frac{\partial A}{\partial q}\frac{\partial P}{\partial p} 
$$

ここで、物理量$A$が新しい正準変数$(Q,P)$を使って$A(Q(q,p), P(q,p))$と書けたとすると、

$$
\begin{aligned}
\frac{\partial A}{\partial q} = \frac{\partial A}{\partial Q} \frac{\partial Q}{\partial q}
+ \frac{\partial A}{\partial P} \frac{\partial P}{\partial q} \\
\frac{\partial A}{\partial p} = \frac{\partial A}{\partial Q} \frac{\partial Q}{\partial p}
+ \frac{\partial A}{\partial P} \frac{\partial P}{\partial p}
\end{aligned}
$$

これを用いてポアソン括弧を書き直すと、

$$
\begin{aligned}
\{A, P\} &= \frac{\partial A}{\partial q}\frac{\partial P}{\partial p} -  \frac{\partial A}{\partial q}\frac{\partial P}{\partial p}  \\
&= \left( \frac{\partial A}{\partial Q} \frac{\partial Q}{\partial q}
+ \frac{\partial A}{\partial P} \frac{\partial P}{\partial q}\right)\frac{\partial P}{\partial p} \\
&- \left(\frac{\partial A}{\partial Q} \frac{\partial Q}{\partial p}
+ \frac{\partial A}{\partial P} \frac{\partial P}{\partial p} \right)\frac{\partial P}{\partial q} \\
&= \frac{\partial A}{\partial Q}
\underbrace{\left(\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q} \right)}_{=1} \\
& + \frac{\partial A}{\partial Q}
\underbrace{\left(\frac{\partial P}{\partial q}\frac{\partial P}{\partial p}-\frac{\partial P}{\partial p}\frac{\partial P}{\partial q} \right)}_{=0}\\
&= \frac{\partial A}{\partial Q}
\end{aligned}
$$

つまり、ポアソン括弧の右側に一般化座標$P$を入れることは、その正準共役な変数である$Q$で偏微分することになる。同様に、ポアソン括弧の右側に$Q$を入れると、$P$による偏微分に負符号がついたものとなる。

以上から、ポアソン括弧は、「ポアソン括弧の左側に入れた変数を右側に入れた変数と正準共役な変数で微分する」という意味を持つ。さて、ポアソン括弧の右側にハミルトニアンを入れたら時間微分となったのであるから、「ハミルトニアンと時間は正準共役である」ということが予想される。実際に、ハミルトニアン(エネルギー)$H$を一般化座標、時間$t$を一般化運動量として$H$と$t$が正準共役な変数とみなせることがわかる。ただし、一般化座標と一般化運動量を入れ替えて負符号をつける変換$(H,t) \rightarrow (t, -H)$が正準変換であることから、時間$t$を一般化座標、エネルギーに負符号をつけた$-H$を一般化運動量とみなすこともでき、こちらを採用する場合が多い。


ある物理量$X$が、別の物理量$Y$と可換である時、$X$を$Y$の正準共役な変数で偏微分するとゼロとなる。したがって、その変数について保存量となることがわかる。

例えば、ある物理量$A$がハミルトニアン$H$と可換であるならば、$\{A, H\}=0$である。したがって

$$
\frac{dA}{dt} = \{A, H\} = 0
$$

となり、$A$は時間に対して不変量となる。

時間以外の不変性の例として、角運動量について考えよう。いま、3次元系において、$z$軸周りの回転に対する角運動量

$$
L_z = x p_y - y p_x
$$

を考えよう。ここで、$L_z$と$z$のポアソン括弧を考える。計算の便利のために$x,y,z$を$q^1,q^2, q^3$、$p_x, p_y, p_z$を$p_1, p_2, p_3$と表し、$L_z$は$L_3$と表現しておこう。すると、

$$
\begin{aligned}
\{q^3, L_3\} &= \frac{\partial q^3}{\partial q^i} \frac{\partial L_3}{\partial p_i}
- \underbrace{\frac{\partial q^3}{\partial p_i}}_{=0} \frac{\partial L_3}{\partial q^i} \\
&= \delta^3_i \frac{\partial L_3}{\partial p_i} \\
&= \frac{\partial L_3}{\partial p_3} \\
&=0
\end{aligned}
$$

すなわち$z$と$L_z$はポアソン括弧の意味で可換である。ただし途中で、一般化座標を一般化座標で偏微分した場合は、自分自身による偏微分は1、それ以外はゼロになること、一般化座標を一般化運動量で偏微分したらゼロであること、$L_3$が$p_3$依存性をもたないことを用いた。

$L_z$は$z$軸まわりの角運動量であり、共役な一般化座標は$z$軸周りの回転角度$\phi$であるから、これは

$$
\frac{\partial z}{\partial \phi} = 0
$$

を意味する。これは「$z$軸周りの回転に対して、$z$座標は変化しない」という、ある意味当然な主張に過ぎない。しかし、そのような性質を、「括弧に放り込んでゼロになるかどうか調べる」という簡便な方法で確認することができるのがポアソン括弧の強みである。

また、ポアソン括弧を用いると、複数の時間不変量から別の時間不変量を見つけることができる。今、2つの物理量$A, B$が、時間不変量であったとしよう。すなわち、

$$
\begin{aligned}
\dot{A} &= \{A, H\} = 0 \\
\dot{B} &= \{B, H\} = 0 \\
\end{aligned}
$$

ここで、$A$と$B$がポアソン括弧に対して非可換である時、ポアソン括弧の値を$C$としよう。

$$
\{A, B\} = C
$$

ここで、ポアソン括弧はヤコビ恒等式を満たすから、

$$
\left\{H , \underbrace{\left\{A, B\right\}}_{=C}\right\} +
\left\{A , \underbrace{\left\{B, H\right\}}_{=0}\right\} +
\left\{B , \underbrace{\left\{H, A\right\}}_{=0}\right\} = 0
$$

したがって

$$
\dot{C} = \{C, H\} = 0
$$

となり、$C$も時間不変量であることがわかる。さらに$C$と$A$のポアソン括弧から新たな変数$D$を作ることができれば、$D$も時間不変量となる。このようにして、同じ変数が出てくるまで次々と不変量を作り出すことができる。

## まとめ

本章ではポアソン括弧を定義した。ポアソン括弧には、「入れた物理量と共役な変数による微分をとる」という意味があり、ハミルトニアンを入れると時間微分に、一般化運動量を入れると、対応する一般化座標による微分となる。ポアソン括弧の性質から、入れ替えても値が変わらない、すなわちポアソン括弧の意味で可換である時、対応する量による微分がゼロ、すなわち何かしらの保存則を表していることがわかる。

## 余談：サイコロの雌雄と生命の選択

サイコロに雌雄があるのを知っているだろうか。サイコロは、1から6までの数字を、裏にある数字の和が7となるように正六面体の各面に割り振ったものだ。いま、サイコロの上面に1を配置すると、下面は6となる。側面には2,3,4,5のどれかが配置されるが、2を手前にしよう。すると奥が5と決まる。残りは3,4のペアだが、3を右に配置するか、左に配置するかの二通りの自由度が残る。3を右に配置したものを雌サイコロ、左に配置したものを雄サイコロと呼ぶ。3次元軸の上下を「天地」、残り東西南北に割り振る時、「天一地六東五西二南三北四」とするのが雌サイコロ、「「天一地六東五西二**南四北三**」とするのが雄サイコロだ。他にも、「1,2,3の順番にx,y,z軸を決めた時に、右手系になるのが雌、左手系になるのが雄」「1,2,3の順番に見た時、反時計回りになるのが雌、時計回りになるのが雄」という覚え方がある。

雄サイコロも雌サイコロも、サイコロとしての性質は全く変わらない。しかし現在使われているサイコロはほとんど雌サイコロである。同様に、このように、全く性質は変わらない二種類のうち、どちらかしか使われなくなる、という現象はよく見られる。例えばアミノ酸にも右手型と左手型が存在する。互いに鏡映の関係にあり、その化学的な性質はほとんど同じであるため、アミノ酸を化学合成すると右手系と左手系が同量できてしまう。にもかかわらず、地球生物はなぜか左手系のみを使うように進化した。我々は左手系のアミノ酸しか代謝できず、左手系のアミノ酸から構成されたタンパク質しか合成ことができない。「ドラえもん」に「フエルミラー」という道具がある。鏡に増やしたいものを映して、手を鏡に入れて取り出すことでものを増やすというものだが、これで食べ物を増やしても、アミノ酸の右手、左手が入れ替わるために食べることはできない(取り出したものをもう一度鏡で増やせばOKだが)。同様にSFなどで、鏡に写した自分がこの世界に飛び出してくる、というストーリーをたまに見かけるが、その生物は右手系のアミノ酸しか代謝できないため、この世界では長く生きることができないというエピソードが記述されたことがある。

糖も生命活動に重要な物質であり、アミノ酸と同様に右手型と左手型が存在するが、興味深いことに我々は右手型ばかりを使っている。なぜ我々はアミノ酸は左手型だけを、糖は右手型だけを使っているのか、その謎はおそらくまだ解明されていない。
