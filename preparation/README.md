# 数学的準備

解析力学を学ぶ前に、必要な数学的準備を済ませよう。解析力学には、ベクトルや座標変換といった線形代数、微分、偏微分、ルジャンドル変換、微分形式、汎関数微分など、多種多様な数学的ツールが現れる。解析力学の美しさを実感するためには、長ったらしい計算を泥臭く最後まで完遂する腕力が必須である[^power]。以下、かなり当たり前な計算を延々と実行するが、面倒くさがらずについてきて欲しい。

[^power]: これは解析力学に限らない。どんなに美しく完成された学問でも、教科書を眺めているだけでは理解できない。途中に現れる泥臭い計算を地道に実行するのが、結局は理解の早道だ。まずは式の意味を理解しなくて良いから、何も見ず計算がすらすらとできるようにしよう。理解はその後についてくる。

## ベクトルとスカラー

### ベクトルの表記

我々は3次元空間に住んでいるため、力学でも3次元空間中の運動を扱うことが多い。3次元空間中では、質点の位置を指定したり、速度や力を指定したりするのに3つの数字の組が必要になる。例えば、ある質点の座標が$(r_x,r_y,r_z)$である時、

$$
\boldsymbol{r} =
\begin{pmatrix}
r_x\\
r_y\\
r_z
\end{pmatrix}
$$

とまとめて表記する。このように、いくつかの数字の組で表現される量を **ベクトル(vector)** と呼ぶ。特に、$\boldsymbol{r}$ は位置ベクトルと呼ばれる。同様に速度ベクトルなどが定義される。本講義ノートでは$\boldsymbol{r}$のように太字で表記する。板書においては、通常のアルファベットに縦線を一本加えることで太字を表現する。

TODO: 板書のベクトルの例

一方、ベクトルではない普通の数を **スカラー(scalar)** と呼ぶ。スカラーの定義は追って与える。また、板書では縦ベクトルは縦に書くが、講義ノートでは紙面の都合から横に書きたいことがある。その場合は$\boldsymbol{r} = {}^t(r_x, r_y, r_z)$のように、ベクトルの最初に$t$をつけて表す。この$t$は転置を表し、横ベクトルを転置することで、縦ベクトルであることを表現している。

### 基底ベクトルと内積

力学におけるベクトルで重要な点は、座標変換によるベクトルの変換である。先程のベクトル表記では、数を3つ縦に並べた。これは、以下のように書き直すことができる。

$$
\boldsymbol{r} =
r_x
\begin{pmatrix}
1\\
0\\
0
\end{pmatrix}
+
r_y
\begin{pmatrix}
0\\
1\\
0
\end{pmatrix}
+
r_y
\begin{pmatrix}
0\\
0\\
1
\end{pmatrix}
$$

3つの基本的なベクトルの和にわけることができた。この基本的なベクトルを$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$と書こう。すると、

$$
\boldsymbol{r} = r_x \boldsymbol{e_x} + r_y \boldsymbol{e_y} + r_z \boldsymbol{e_z}
$$

と表記できる。この時、$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$を基底ベクトル、この式を基底ベクトルによる展開と呼ぶ。特に、

$$
\boldsymbol{e}_x =
\begin{pmatrix}
1\\
0\\
0
\end{pmatrix},
\boldsymbol{e}_y =
\begin{pmatrix}
0\\
1\\
0
\end{pmatrix},
\boldsymbol{e}_z =
\begin{pmatrix}
0\\
0\\
1
\end{pmatrix}
$$

の形をとる基底を標準基底と呼ぶ。

$$
\boldsymbol{r} =
\begin{pmatrix}
r_x\\
r_y\\
r_z
\end{pmatrix}
$$
という表記は、標準基底ベクトル$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$を採用した時のベクトル$\boldsymbol{r}$の展開表現である。

すなわち、本来なら

$$
\boldsymbol{r} = r_x \boldsymbol{e_x} + r_y \boldsymbol{e_y} + r_z \boldsymbol{e_z}
$$

と書くべきところを、基底ベクトルを$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$と暗黙に仮定した上で括弧で略記した記法である。

さて、今は$\boldsymbol{e}_x$などが簡単な形をしているため、$\boldsymbol{r}$を$\boldsymbol{e}_x$などで展開した時の係数が簡単に求まった。しかし、一般のベクトルを基底ベクトルにした場合、その展開係数を求めるのは面倒である。そこで、ベクトルの内積により展開係数を求める。

基底ベクトル$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$は、要素が縦に並んでいる縦ベクトルであった。これらの対になるベクトルとして、以下の横ベクトルを定義する。

$$
\begin{aligned}
\boldsymbol{e}^x =
\begin{pmatrix}
1 & 0 & 0
\end{pmatrix} \\
\boldsymbol{e}^y =
\begin{pmatrix}
0 & 1 & 0
\end{pmatrix} \\
\boldsymbol{e}^z =
\begin{pmatrix}
0 & 0 & 1
\end{pmatrix}
\end{aligned}
$$

縦ベクトルの添字を下に、横ベクトルの添字を上につけている。縦ベクトルと横ベクトルの間には内積を定義することができる。

例えば、$\boldsymbol{e}^x$と$\boldsymbol{e}_x$の内積を取ると

$$
(\boldsymbol{e}^x, \boldsymbol{e}_x) =
\begin{pmatrix}
1 & 0 & 0
\end{pmatrix}
\begin{pmatrix}
1\\
0\\
0
\end{pmatrix}
= 1
$$

同様に、$\boldsymbol{e}^x$と$\boldsymbol{e}_y$の内積を取ると

$$
(\boldsymbol{e}^x, \boldsymbol{e}_y) =
\begin{pmatrix}
1 & 0 & 0
\end{pmatrix}
\begin{pmatrix}
0\\
1\\
0
\end{pmatrix}
= 0
$$
つまり、添字が同じであれば1に、異なれば0になる。

いちいち座標を$x,y,z$と書いていると、特に和を取る時に不便なので、以下$\boldsymbol{e}_x,\boldsymbol{e}_y,\boldsymbol{e}_z$を、それぞれ$\boldsymbol{e}_1,\boldsymbol{e}_2,\boldsymbol{e}_3$と表記しよう。相方となる基底$\boldsymbol{e}^1,\boldsymbol{e}^2,\boldsymbol{e}^3$も同様である。この表記を用いると、先程の内積は以下のようにまとめて書ける。

$$
(\boldsymbol{e}^i, \boldsymbol{e}_j) = \delta_{i,j}
$$

内積がゼロであることを直交していると呼ぶ。自分の相方が決まっており、相方以外との内積が全てゼロになるような基底を直交基底と呼ぶ。さらに相方との内積が1に規格化されている基底を正規直交基底と呼ぶ。

基底として正規直交基底を選ぶと、任意の基底で表現されたベクトルを、別の基底で表現した時の成分が簡単に求まる、という利点がある。

一般に、あるベクトルと、内積をとる相手のベクトルの住む空間は異なる。自分が住む空間から見て、内積を取る相手が住む空間を **双対空間(dual space)** と呼ぶ。双対空間はお互い様であり、縦ベクトルから見れば横ベクトルが住む空間が双対空間だが、横ベクトルから見れば縦ベクトルが住む空間が双対空間である。また、ある基底と内積をとる相方の基底のことを双対基底と呼ぶ。双対基底は、双対空間に住んでいる基底である。

ここまではベクトルが住む空間がわかりやすいように、住む世界を添え字の上下で、内積を括弧で表現したが、ベクトルが住む空間と、相方の住む空間を区別する必要がない場合は、２つのベクトル$\boldsymbol{a} = {}^t(a_1, a_2, a_3)$と$\boldsymbol{b} = {}^t(b_1, b_2, b_3)$の内積を

$$
\begin{aligned}
\boldsymbol{a} \cdot \boldsymbol{b} &\equiv ({}^t \boldsymbol{a}, \boldsymbol{b}) \\
&= a_1 b_1 + a_2 b_2 + a_3 b_3 \\
&= \sum_i^{3} a_i b_j
\end{aligned}
$$

と書く場合もある。適宜使い分けるので混乱しないようにして欲しい。

さて、ある基底$\boldsymbol{e}_1, \boldsymbol{e}_2, \boldsymbol{e}_3$で表現されたベクトル$\boldsymbol{r} = {}^t(r_1, r_2, r_3)$について、別の基底$\boldsymbol{e}'_1, \boldsymbol{e}'_2, \boldsymbol{e}'_3$で展開した時の表現$\boldsymbol{r} = {}^t(r'_1, r'_2, r'_3)$を求めたい。つまり、

$$
\boldsymbol{r} = r'_1 \boldsymbol{e}'_1  +r'_1 \boldsymbol{e}'_2+r'_3 \boldsymbol{e}'_3
$$

任意のベクトルと基底の内積を取ることで、その基底方向への成分を得ることができる。つまり、

$$
\boldsymbol{r} = r_x \boldsymbol{e_x} + r_y \boldsymbol{e_y} + r_z \boldsymbol{e_z}
$$

という表記は

$$
\begin{aligned}
\boldsymbol{r} \cdot \boldsymbol{e_x} &= r_x \\
\boldsymbol{r} \cdot \boldsymbol{e_y} &= r_y \\
\boldsymbol{r} \cdot \boldsymbol{e_z} &= r_z
\end{aligned}
$$

ということを意味している。

### 関数空間とベクトル

高校まではベクトルを「複数個の値の組」として捉えていた。しかし、大学ではより一般的な扱いをする。すなわちベクトルとは、なにかの集合の要素であり、その線形結合がやはり同じ集合に所属するものを言う。3次元ベクトルはこの定義を満たしているが、例えば変数$x$の任意の関数もベクトルの定義を満たす。つまり、関数全体の集合を$\mathcal{V}$として、関数$f(x)$と$g(x)$が$\mathcal{V}$の要素である、つまり$f(x),g(x) \in \mathcal{V}$である時、その線形結合$a f(x)+ b (g)$もやはり$x$の関数であるから、関数の集合はベクトルである。この時、関数の集合$\mathcal{V}$をベクトル空間、その要素をベクトルと呼ぶ。

関数をベクトルとみなす時、内積も定義することができる。いま、関数$f(x)$と$g(x)$について、その内積を

$$
(f,g) = \int_{-\infty}^{\infty}f^*(x)g(x)dx
$$

により定義する。ただし$f^*(x)$は$f(x)$の複素共役である。これにより、ベクトル2つからスカラーを結びつけることができる。こうして、関数をベクトルとみなし、ある基底から別の基底での表現を得るのがフーリエ変換であった。

後で見るように、$\partial_x$や、$dx$といった演算子もベクトルとみなすことができ、さらにその間に内積を考えることができる。

### 基底の変換

TODO: 書く

### テンソル積

解析力学において、(いわゆる行列の意味での)テンソル積はあまりでてこない。しかし、この後に学ぶ微分形式で必要となるので、簡単に紹介しておこう。

基底$\boldsymbol{e}_1$と、その相方とのテンソル積 $\boldsymbol{e}^1 \otimes \boldsymbol{e}_1$を以下のように作る。

$$
\begin{aligned}
\boldsymbol{e}^1 \otimes \boldsymbol{e}_1 &=
\begin{pmatrix}
1 & 0 & 0
\end{pmatrix}
\otimes
\begin{pmatrix}
1\\ 0\\0
\end{pmatrix}
=
\end{aligned}
\begin{pmatrix}
1 & 0 & 0 \\
0 & 0 & 0 \\
0 & 0 & 0
\end{pmatrix}
$$

すなわち、3次元空間の基底$\boldsymbox{e}_i$と、その双対基底

全く同様に$\boldsymbol{e}^i \otimes \boldsymbol{e}_j$を定義することができる。これらにより3行3列の行列を展開できる。

$$
\begin{aligned}
A &=
\begin{pmatrix}
a^1_1 & a^2_1 & a^3_1 \\
a^1_2 & a^2_2 & a^3_2 \\
a^1_3 & a^2_3 & a^3_3
\end{pmatrix}
= \sum_{i=1}^{3} \sum_{j=1}^{3} a^i_j \boldsymbol{e}^i \otimes \boldsymbol{e}_j
\end{aligned}
$$

さて、多くの場合において、和の範囲は自明である。例えば$i$が軸に関するものであれば1から3までであろうし、$i$が粒子番号であれば$1$から$N$まで走るであろう。その場合にいちいち和記号$\Sigma$を書くのは面倒である。そこで、同じ添字が２つ現れたら、その添字について和を取る、という約束をする。

## 微分と偏微分

力学は微分方程式を解く学問であるから、当然微積分が出てくる。特に合成関数の微分や、ベクトルによる微分などが現れるので、ここで簡単に確認しておこう。

### 微分の表記方法

微分の記法にはいくつか方法がある。関数$f(x)$の$x$による導関数は

$$
\frac{d}{dx} f(x), \frac{d f(x)}{dx}, \frac{df}{dx}
$$

などと分数の形で表記する。この表記を **ライプニッツ記法(Leibniz's notation)** と呼ぶ[^leibniz]。

[^leibniz]: ゴッドフリート・ライプニッツ(Gottfried Wilhelm Leibniz, 1646-1716)に因む。積分記号なども彼の発明である。

ライプニッツ記法では、何を何で微分したかが明記されているため混乱が少ないが、式が複雑であるときに煩わしいことがある。そこで、本講義では適宜、別の記法も用いることにする。

まず関数$f(x)$を見ると、$f$という値が$x$という引数に依存していることがわかる。したがって、$f(x)$を微分しようとしたら$x$に決まっているので、以下のようにプライム記号で表記する。

$$
f'(x) \equiv \frac{df}{dx}
$$

二階微分や三階微分は

$$
\begin{aligned}
f''(x) &\equiv \frac{d^2f}{dx^2}\\
f'''(x) &\equiv \frac{d^3f}{dx^3}\\
\end{aligned}
$$

とプライム記号を増やして表記する。このような表記を **ラグランジュ記法(Lagrange's notation)** と呼ぶ[^lagrange]

[^lagrange]: ジョセフ＝ルイ・ラグランジュ(Joseph-Louis Lagrange, 1736-1813)に因む。解析力学の創始者の一人である。

それ以上の高階微分や、$n$階微分など微分回数が変数である場合は

$$
\begin{aligned}
f^{(4)}(x) &\equiv \frac{d^4 f}{dx^4}\\
f^{(n)}(x) &\equiv \frac{d^n f}{dx^n}
\end{aligned}
$$

などと表記するが、力学においてはほとんど高階微分は出てこないので気にしなくて良い。なお、扱う記号はプライム「'」であるが、$f'(x)$を「エフダッシュエックス」と呼ぶことがある(余談参照)。

さて、力学は物体の運動、すなわち時間変化を追う学問である。したがって、時間微分が頻出する。そこで、時間微分をドットで表記することにする。二階微分は二重ドットで表記する。

$$
\begin{aligned}
\dot{x} &\equiv \frac{dx}{dt} \\
\ddot{x} &\equiv \frac{d^2x}{dt^2}
\end{aligned}
$$

これを **ニュートン記法(Newton's notation)** と呼ぶ。[^newton]
高階数微分ではドットの上に数を書く表記もあるが、ほとんどの場合において二階微分までしか扱わないため、二重ドット表記まで覚えれば良い。

[^newton]: アイザック・ニュートン(1642–1727)に因む。ニュートン力学を構築した。微積分の研究、万有引力の法則や、光学の研究でも有名。

これらの表記が複合する場合がある。例えば位置$x$は時間の関数であり、力$f$は位置の関数であるとき、$f(x)$を時間で微分したもののライプニッツ表記は

$$
\frac{df }{dt} = \frac{df}{dx} \frac{dx}{dt}
$$

となる。これは

$$
\frac{df}{dt} = f'(x) \dot{x}
$$

と表記できる。関数を、その引数で微分する場合はラグランジュ記法が、時間に関する変数$x$の時間微分はニュートン記法が使われている。ややこしいようにも見えるが、慣れてしまえば表記が簡略化される分、読みやすくなる。

次に、ベクトルが絡んだ微分について考えよう。質点の位置が$\boldsymbol{r} = (x,y,z)$で表されている。

TODO: 続きを書く

もう少し実際的な例を見てみよう。三次元空間に質点が2つあり、それぞれの座標が$\boldsymbol{r}_1 = (x_1, y_1, z_1)$, $\boldsymbol{r}_2 = (x_2, y_2, z_2)$で与えられているとする。この二点の距離$r$は

$$
\begin{aligned}
r &= \sqrt{(\boldsymbol{r}_1-\boldsymbol{r}_2)^2} \\
  &= \sqrt{(x_1-x_2)^2+(y_1-y_2)^2+(z_1-z_2)^2}
\end{aligned}
$$

で与えられる。いま、2つの質点の間に万有引力の法則が成り立つとすると、質点の間には距離$r$に依存する力$f(r)$が働くことになる。力学の問題を扱う場合、この$f(r)$の時間微分や、$x_1$による微分が現れる。面倒だが、このような計算がすらすらできないと今後の議論に全くついていけなくなるため、ここで真面目に計算しよう。

まず、$f(r)$の時間微分を考える。合成関数の微分により

$$
\frac{df}{dt} = \frac{df}{dr} \frac{dr}{dt} = f'(r) \dot{r}
$$

となる。次は$r$の時間微分だが、$r$は$\boldsymbol{r}_1$と$\boldsymbol{r}_2$の関数であるから、

$$
\dot{r} = \frac{\partial r}{\partial \boldsymbol{r}_1} \dot{\boldsymbol{r}_1} + \frac{\partial r}{\partial \boldsymbol{r}_2} \dot{\boldsymbol{r}_2}
$$

TODO: 続きを書く。

## ベクトル解析

多くの場合、力学では3次元空間を扱うため、座標や速度、力は3次元ベクトルとなる。また、運動エネルギーやポテンシャルエネルギーといった量は、エネルギーであるからスカラーだが、引数としてベクトルを取る。これらを微分すると、スカラーとベクトルが入り交じることになる。以後、混乱しないように、表記の確認をしておこう。

例として、太陽系を考えよう。太陽質量を$M$、地球の質量を$m$とし、地球の座標を$(x,y)$とする。宇宙空間は3次元だが、公転面を考えることで2次元系を考える。さらに、太陽が動かないと近似することで(太陽質量は地球の33万倍なので、これは非常に良い近似となる)、この系の運動方程式は以下のようになる。

$$
\begin{aligned}
m \frac{d^2x}{dt^2} &=  -G \frac{Mmx}{r^3} \\
m \frac{d^2y}{dt^2} &=  -G \frac{Mmy}{r^3}
\end{aligned}
$$

ただし、$r = \sqrt{x^2 + y^2}$である。これをベクトルの言葉で書いていきたい。

まず、重力は保存力なので、ポテンシャルエネルギー$V(r)$を考えよう。

$$
V(r) = -\frac{GMm}{r}
$$

これを$x$で偏微分すると

$$
\frac{\partial V}{\partial x} = V'(r) \frac{dr}{dx}
$$

$dr/dx$をそのまま計算しても良いが、$r^2$の全微分を考えるのが楽である。

$$
r^2 = x^2 + y^2
$$

より、

$$
2r dr = 2xdx + 2ydy
$$

ここから

$$
\frac{\partial r}{\partial x} = \frac{x}{r}
$$

以上から、

$$
\frac{\partial V}{\partial x} = G \frac{Mmx}{r^3}
$$

$y$も同様である。ここから運動方程式は

$$
\begin{aligned}
m \frac{d^2x}{dt^2} &=  - \frac{\partial V}{\partial x} \\
m \frac{d^2y}{dt^2} &=  - \frac{\partial V}{\partial y}
\end{aligned}
$$

まず、地球の座標をベクトルで表そう。

$$
\boldsymbol{r} =
\begin{pmatrix}
x \\ y
\end{pmatrix}
$$

すると、先程の運動方程式は以下のように一行にまとめられる。

$$
\begin{aligned}
m \frac{d^2 \boldsymbol{r}}{dt^2} &=  -G \frac{Mmx}{r^2} \boldsymbol{r}
\end{aligned}
$$

## 座標変換

共変、反変について書く。

## 微分形式

変数$x$と$y$に依存する2変数関数$f(x,y)$を考える。$x$と$y$が時間$t$に依存している時、$f$の時間微分は

$$
\frac{df}{dt} = \frac{\partial f}{\partial x} \frac{dx}{dt} + \frac{\partial f}{\partial y} \frac{dy}{dt}
$$

さて、$f(x,y)$は$x$と$y$にしか依存していないので、$x$や$y$が$t$ではなく$s$に依存していても式の形は全く変わらない。

$$
\frac{df}{ds} = \frac{\partial f}{\partial x} \frac{dx}{ds} + \frac{\partial f}{\partial y} \frac{dy}{ds}
$$

そこで、$dt$や$ds$を形式的に消して、以下のように書いてみる。

$$
df = \frac{\partial f}{\partial x} dx
+ \frac{\partial f}{\partial y} dy
$$

このように書ける時$f$は全微分可能であると言い、この表式を$f$の**全微分**と呼ぶ。

さて、この式の意味を考えよう。$f(x,y)$という関数を、点$(x,y)$の周りでテイラー展開し、一次の項目だけ残す。

$$
f(x+\delta x, y+\delta x) - f(x,y) \sim \frac{\partial f}{\partial x} \delta x +
\frac{\partial f}{\partial y} \delta y
$$

つまり、$\partial f/\partial x$という量は、$y$を変化させずに、$x$だけを変化させた場合の$f$の変化の割合であった。そこで、全微分の両辺を形式的に$dx$でわろう。この時、微分記号が偏微分に化ける。

$$
\begin{aligned}
\frac{\partial f}{\partial x} &= \frac{\partial f}{\partial x} \underbrace{\frac{\partial x}{\partial x}}_{=1}
+ \frac{\partial f}{\partial y} \underbrace{\frac{\partial y}{\partial x}}_{=0} \\
&= \frac{\partial f}{\partial x}
\end{aligned}
$$

この事実をもって、もう一度先の全微分の式を眺めてみる。

$$
df = \frac{\partial f}{\partial x} dx
+ \frac{\partial f}{\partial y} dy
$$

すると、これがまるでベクトルを基底で展開しているかのように見える。

$$
\boldsymbol{f} = \frac{\partial f}{\partial x} \boldsymbol{e}_x +
\frac{\partial f}{\partial y} \boldsymbol{e}_y
$$

両辺、$\boldsymbol{e}_x$の相方である$\boldsymbol{e}^x$との内積を取ると、

$$
(\boldsymbol{e}^x, \boldsymbol{f}) = \frac{\partial f}{\partial x}
$$

となる。以上から、$df$をベクトル、$dx$や$dy$を基底のように扱うことができることがわかる。さらに、$dx$をベクトルと見た時、その相方となるベクトルが$\partial_x$であることもわかる。すなわち、$dx, dy, dz$と$\partial_x, \partial_y, \partial_z$の間には、自然な内積、

$$
\left<d\alpha, \frac{\partial}{\partial \beta}\right> = \frac{\partial \alpha}{\partial \beta} = \delta_{\alpha, \beta}
$$

が定義される。

## 余談：ダッシュかプライムか

ラグランジュによる微分記法$f'(x)$を「エフダッシュ」と呼ぶべきか「エフプライム」と呼ぶべきかはよく論争になる。田野村忠温氏による調査では、$a'$を「a dash」と読む最も初期の文献が1823年まで遡ることがわかっている。これは「A Familiar Introduction to　Crystallography」という、英国で出版された出版物である。一方、$a'$を「a prime」と呼ぶ文献では、1832年に米国で出版された代数学の教科書がある(John Radford Young An Elementary Treatise on Algebra, Theoretical and Practical, First American Edition, With Additions and Improvements by Samuel Ward, 1832)。どうやら英国でダッシュ読みが、米国でプライム読みが普及したらしいが、詳細は不明である。

* 参考：[a' の英語における読みの歴史に関する覚書  ─「ダッシュ、プライム」余論─ 田野村忠温](http://www.tanomura.com/research/papers/tanomura_2018_dash_prime_addenda.pdf)
