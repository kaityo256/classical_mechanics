# ラグランジュ形式の力学

これから、解析力学の解析力学らしいところ、すなわち変数変換に対する運動方程式の変換について扱う。解析力学はニュートン力学を再定式化したものであるから、本質的には同じ問題を別の表示に書き換えているのに過ぎない。しかし、別の形式で書き直した方が見通しがよくなるし、ニュートン力学では見えなかった世界が見えてくる。これからニュートン力学からラグランジュ形式の力学、そしてハミルトン形式の力学へと続いていくが、その前にニュートン力学のままだと変数変換が面倒であることを見ておこう。

## 座標変換とベクトル

解析力学とは、座標変換の学問である。そこで、座標変換について簡単にまとめておこう。一般に、ベクトルは適当な基底を選ぶことで成分表示できる。同じベクトルでも、別の基底を選ぶと成分が変わる。この成分の変化のし方により、ベクトルは反変ベクトルと共変ベクトルに分類される。

![反変ベクトル](fig/contravariant_vector.png)

例を挙げよう。基底$\{\boldsymbol{e}_1, \boldsymbol{e}_2\}$で張られる二次元空間があり、あるベクトル$\boldsymbol{u}$がこの基底により

$$
\boldsymbol{u} = 6 \boldsymbol{e}_1 + 4 \boldsymbol{e}_2
$$

と展開されているとしよう。この時、ベクトルの成分表示は$\boldsymbol{u} = (6,4)$となる。さて、基底の長さを2倍にしてみよう。

$$
\begin{aligned}
\tilde{\boldsymbol{e}}_1 &= 2 \boldsymbol{e}_1 \\
\tilde{\boldsymbol{e}}_2 &= 2 \boldsymbol{e}_2
\end{aligned}
$$

新しい基底$\{\tilde{\boldsymbol{e}}_1, \tilde{\boldsymbol{e}}_2\}$で$\boldsymbol{u}$を展開すると、

$$
\boldsymbol{u} = 3 \tilde{\boldsymbol{e}}_1 + 2 \tilde{\boldsymbol{e}}_2
$$

となる。この時、ベクトルの成分表示は$\boldsymbol{u} = (3,2)$と、元の半分になる。このように、基底の長さを2倍にした時、成分が半分となるようなベクトルを、基底と反対向きの変換を受けるという意味で反変ベクトル(contravariant vectorと呼ぶ。このように、基底で展開した成分は反変ベクトルとなる。反変ベクトルの正確な定義は後に与える。

この事実を一般化しておこう。いま、あるベクトル$\boldsymbol{u}$が正規直交基底$\{\boldsymbol{e}_i\}$により、以下のように成分表示されているとしよう。

$$
\boldsymbol{u} = u^i \boldsymbol{e}_i
$$

同じ記号が現れた場合(今回は$i$)はその記号について和を取るというアインシュタイン規約を用いている。さて、なにか適当な行列$T$を用いて、基底が$\{\boldsymbol{e}_i\}$から、別の正規直交基底$\{\tilde{\boldsymbol{e}}_i\}$に以下のように変換されたとする。

$$
\tilde{\boldsymbol{e}}_i = T^k_{\,i} \boldsymbol{e}_k
$$

ベクトル$\boldsymbol{u}$を新しい基底$\{\tilde{\boldsymbol{e}}_i\}$で展開すると、

$$
\begin{aligned}
\boldsymbol{u} &= \tilde{u}^k \tilde{\boldsymbol{e}}_k \\
&= \tilde{u}^k T^j_{\,k} \boldsymbol{e}_j
\end{aligned}
$$

両辺について$\boldsymbol{e}^i$と内積をとると、

$$
\begin{aligned}
u^i &= \tilde{u}^k T^j_{\,k} (\boldsymbol{e}^i,\boldsymbol{e}_j),\\
&= \tilde{u}^k T^j_{\,k} \delta^i_{\,j}, \\
&= T^i_{\,k} \tilde{u}^k.
\end{aligned}
$$

基底の変換と並べてみると、

$$
\begin{aligned}
\tilde{\boldsymbol{e}}_i &= T^k_{\,i} \boldsymbol{e}_k \\
u^i &= T^i_{\,k} \tilde{u}^k
\end{aligned}
$$

チルダが現れる項が左右逆になっていることがわかる。基底の変換と反対の変換を受けるから、$\boldsymbol{u}$は反変ベクトルと呼ぶ。

反変ベクトルは逆に、チルダが同じ側に現れるのが共変ベクトルである。定義から、基底自身は共変ベクトルとなる。さらに、先程、反変ベクトルであることがわかった成分ベクトルを縦ベクトルとすると、その双対である横ベクトルが共変ベクトルとなる。

$\{\boldsymbol{e}_i\}$や$\{\tilde{\boldsymbol{e}}_i\}$が張っていた縦ベクトルの空間と共役な空間を張る、横ベクトルの基底$\{\boldsymbol{e}^i\}$や$\{\tilde{\boldsymbol{e}}^i\}$を考えよう。以下のように、共役なベクトルとの直交性を課す。

$$
\begin{aligned}
(\boldsymbol{e}^j,\boldsymbol{e}_i) &= \delta^j_{\,i} \\
(\tilde{\boldsymbol{e}}^j,\tilde{\boldsymbol{e}}_i) &= \delta^j_{\,i} \\
\end{aligned}
$$

さて、縦ベクトルが$\tilde{\boldsymbol{e}}_i = T^k_{\,i} \boldsymbol{e}_k$と変換される時、横ベクトルがどのように変換されるか見てみよう。チルダ付きの横ベクトルが、チルダの無い横ベクトルで

$$
\tilde{\boldsymbol{e}}^i = M^i_{\,k} \boldsymbol{e}^k
$$

と展開できるとする。両辺、$\boldsymbol{e}_j$との内積を取ると、

$$
\begin{aligned}
(\tilde{\boldsymbol{e}}^i, \boldsymbol{e}_j) &= M^i_{\,k} (\boldsymbol{e}^k, \boldsymbol{e}_j)
&= M^i_{\,k} \delta^k_{\,j} \\
&= M^i_{\,j}
\end{aligned}
$$

縦ベクトルのチルダ付きとチルダ無しの関係を考える。

$$
\tilde{\boldsymbol{e}}_i = T^k_{\,i} \boldsymbol{e}_k.
$$

$\tilde{\boldsymbol{e}}^j$と内積をとると、左辺は直交性から

$$
(\tilde{\boldsymbol{e}}^j, \tilde{\boldsymbol{e}}_i) = \delta^j_{\,i}.
$$

右辺は、先程求めた$(\tilde{\boldsymbol{e}}^i, \boldsymbol{e}_j) = M^i_{\,j}$を代入することで

$$
T^k_{\,i} (\tilde{\boldsymbol{e}}^j, \boldsymbol{e}_k) =   M^j_{\,k} T^k_{\,i} 
$$

以上から、

$$
M^j_{\,k} T^k_{\,i} = \delta^j_{\,i}
$$

これは、行列$M$と$T$が互いに逆行列の関係にあることを意味する。

さて、横ベクトル$\boldsymbol{v}$が、横ベクトルの基底で

$$
\boldsymbol{v} = v_i \boldsymbol{e}^i = \tilde{v}_i \boldsymbol{e}^i 
$$

と展開されているとしよう。縦ベクトルと同様な議論から、

$$
v^i = M^i_{\,k} \tilde{v}^k
$$

が成立する。両辺に行列$T$をかけると、

縦ベクトルの基底の変換の式と並べると、

$$
\begin{aligned}
\tilde{\boldsymbol{e}}_i &= T^k_{\,i} \boldsymbol{e}_k \\
\tilde{v}^k &= T^k_{\,i }v^i
\end{aligned}
$$

のように、基底の変換とベクトルの変換のチルダのある方が同じ側に来ることがわかる。このような変換をするベクトルを共変ベクトルと呼ぶ。すなわち、横ベクトルは縦ベクトルの基底変換に対して共変性を持つ。

解析力学においては、線形でない基底変換も考慮する。一般に、$\{x^i\}$から$\{\tilde{x}^i\}$への座標変換において、

$$
\tilde{A}^i = \frac{\partial \tilde{x}^i}{\partial x^j} A^j
$$

のように変換を受けるベクトル$\boldsymbol{A}$を **反変ベクトル(contravariant vector)** と呼び、添字を右上につける。チルダのある量を左辺に持ってきた時、右辺の変換行列の偏微分の分子にチルダが現れるのが反変ベクトルである。この変換公式が反変ベクトルの定義を与える。ここで、座標の変換行列を偏微分で表現したが、この変換が先程の線形変換を特殊な場合として含んでいることに注意すること。

逆に、

$$
\tilde{B}_i = \frac{\partial x^i}{\partial \tilde{x}^j} B_j
$$

のように変換を受けるベクトル$\boldsymbol{B}$を **共変ベクトル (covariant vector)** と呼び、添字を右下につける。チルダのある量を左辺に持ってきた時、右辺の変換行列の偏微分の分母にチルダが現れるのが反変ベクトルである。この変換公式が共変ベクトルの定義を与える。

非線形な座標変換の典型例がデカルト座標から極座標への変換である。例えば$(x,y)$と$(r,\theta)$の変換を考えよう。

$$
\begin{aligned}
x &= r \cos\theta \\
y &= r \sin \theta
\end{aligned}
$$

この変換は非線形だが、全微分を考えるとベクトルとみなすことができる。

$$
\begin{aligned}
dx &= \cos \theta dr - r \sin \theta d\theta \\
dy &= \sin \theta dr + r \cos \theta d\theta \\
\end{aligned}
$$

これは、基底$\{dr, d\theta\}$から、$\{dx, dy\}$への線形変換と見ることができる。後で見やすいように、$(r,\theta)$を$(x^1,x^2)$、$(x,y)$を$\tilde{x}^1, \tilde{x}^2$と表記すると、先程の全微分の式は、

$$
d\tilde{x}^i = \frac{\partial \tilde{x}^i}{\partial x^k} dx^k
$$

とまとめることができる。例えば

$$
\frac{\partial \tilde{x}_1}{\partial x_2} \equiv \frac{\partial x}{\partial \theta}
$$

である。このように、座標の微分$dx, dy$や$dr, d\theta$は自然に反変ベクトルとなる。

数学的準備の章にて、$dx$を縦ベクトルとみなすと、$\partial_x$が自然な双対基底であり、横ベクトルとみなせることを見た。従って、$\partial_x, \partial_y$は共変ベクトルとなることが期待される。

いま、$(x^1, x^2)$で張られる空間に、スカラー関数$f(x^1, x^2)$があるとしよう。この関数の勾配(gradient)が、変数変換$(x^1, x^2) \rightarrow (\tilde{x}^1, \tilde{x}^2)$でどのように変換されるか見てみよう。合成関数の偏微分の公式から、

$$
\begin{aligned}
\frac{\partial f}{\partial \tilde{x}^1} &= 
\frac{\partial f}{\partial x^1} \frac{\partial x^1}{\partial \tilde{x}^1}+ 
\frac{\partial f}{\partial x^2} \frac{\partial x^2}{\partial \tilde{x}^1}\\
\frac{\partial f}{\partial \tilde{x}^2} &= 
\frac{\partial f}{\partial x^1} \frac{\partial x^1}{\partial \tilde{x}^2}+ 
\frac{\partial f}{\partial x^2} \frac{\partial x^2}{\partial \tilde{x}^2}\\
\end{aligned}
$$

これが任意の$f$について成り立つので、

$$
\tilde{\partial}_i = \frac{\partial x^k}{\partial \tilde{x}^i} \partial_k
$$

ここで、$\partial_i \equiv \partial_{q_i}$、$\tilde{\partial}_i \equiv \partial_{\tilde{q}_i}$という表記を用いた。右辺に現れる偏微分の分母にチルダのある量が現れているため、$\{\partial_i\}$は共変ベクトルであることがわかる(そのため、添字を下に書いている)。

二つ並べると共変性、反変性がわかりやすい。

$$
\begin{aligned}
d\tilde{x}^i &= \frac{\partial \tilde{x}^i}{\partial x^k} dx^k\\
\tilde{\partial}_i &= \frac{\partial x^k}{\partial \tilde{x}^i} \partial_k
\end{aligned}
$$

チルダなしの量からチルダ付きの量に変換した時、偏微分の上下どちらにチルダが現れるかが逆になっていることがわかる。このように、座標変換により変換を受ける量を一般に **ベクトル (vector)** と呼ぶ。一方、座標変換により変換を受けない量を **スカラー(scolar)** と呼ぶ。例えば二次元平面 $(x^1, x^2)$で定義された関数$f(x^1,x^2)$は、座標変換$(x^1, x^2) \rightarrow (\tilde{x}^1, \tilde{x}^2)$により値が変わらない。これは、例えば座標を変えても、今立っている場所の標高が変わらないのと同様である。一方、座標のスケールをメートルからキロメートルに変えると、勾配の大きさは変わる。メートルで勾配を測っている時には「メートルあたりどれだけ高さが変化するか」であったが、キロメートルで測ると「キロメートルあたりどれだけ高さが変化するか」となるため、勾配ベクトルは大きくなる。従って、勾配は共変ベクトルである。

反変ベクトルと共変ベクトルは、スカラーを掛けたり割ったりしても反変性や共変性は変わらない。また、反変ベクトルと共変ベクトルは内積を取ることでスカラー量となる。また、ベクトルが等式で結ばれている時、片方が反変ベクトルであるなら、もう片方も反変ベクトルでなければならない。

## ニュートンの運動方程式の共変性

物理学は自然法則を記述する学問である。何かの現象を記述する際、どのような座標系を選ぶかは任意であるから、物理法則が座標系に依存してはならない。一般に速度や位置はベクトル量であるから座標変換によりその値を変えるが、その関係を示す運動法則は変わってはならない。このような性質を **共変性(covariance)** と呼ぶ。以下では、ニュートンの運動方程式が座標変換に対してどのように変換を受けるか見てみよう。

ニュートンの運動方程式は以下のように書ける。

$$
m\frac{d \boldsymbol{v}}{dt} = \boldsymbol{F}
$$

上記では質量は一定としたが、燃料を消費しながら飛ぶロケットなど、運動に従って質量が変化する場合もあるため、質量と速度をまとめた運動量を導入しよう。

$$
\boldsymbol{p} = m \boldsymbol{v}
$$

するとニュートンの運動方程式は、運動量の時間変化が、加えられた力と一致する、という意味となる。

$$
\dot{\boldsymbol{p}} = \boldsymbol{F}
$$

さて、このベクトルを成分表示にあたり、$\boldsymbol{p}$や$\boldsymbol{F}$が反変ベクトルであるか、共変ベクトルであるかを調べなければならない(そうでなければ添字を上付きにすべきか下付きにすべきかわからない)。まず、通常の位置ベクトル$\boldsymbol{r}$は、定義から明らかに反変ベクトルである。時間はスカラー量であるから、位置ベクトルの時間微分である速度ベクトルは反変ベクトルである。さらに、質量はスカラー量であるから、速度ベクトルに質量をかけた運動量も反変ベクトルであり、その時間微分も反変ベクトルであるから、等式で結ばれている力ベクトル$\boldsymbol{F}$も反変ベクトルとなる。

さて、運動量も力も反変ベクトルであることがわかったので、上付きの添字で成分表示しよう。

$$
\dot{p}^i = F^i
$$

となる。今、座標変換$(x^1, x^2,x^3)\rightarrow (\tilde{x}^1,\tilde{x}^2,\tilde{x}^3)$により、$\boldsymbol{p} \rightarrow \tilde{\boldsymbol{p}}$に変換されたとしよう。反変ベクトルの定義から、変換則は

$$
\tilde{p}^i = \frac{\partial \tilde{x}^i}{\partial x^k} p^k
$$

で与えられる。ここで、成分が

$$
T^i_{\,k} \equiv \frac{\partial \tilde{x}^i}{\partial x^k}
$$

で与えられる行列$T$を用意すると、運動量ベクトルは以下のように変換される。

$$
\tilde{\boldsymbol{p}} = T \boldsymbol{p}
$$

力ベクトル$\boldsymbol{F}$も同様な変換を受ける。以上から、

$$
\begin{aligned}
\dot{\tilde{p}^i} - \tilde{F}^i &= T (\dot{p}^i - F^i) \\
\end{aligned}
$$

となる。もともとのニュートンの運動方程式から$\dot{p}^i - F^i = 0$であるから右辺がゼロとなるため、左辺もゼロとなる。すなわち、運動方程式

$$
\dot{p}^i = F^i
$$

が成立している時、変換後の成分においても

$$
\dot{\tilde{p}^i} =\tilde{F}^i
$$

が成り立つ。すなわち、ニュートンの運動方程式は座標の線形変換に対して形を変えない。このような事実を「ニュートンの方程式は、座標の線形変換に対して **共変(covariant)** である」と表現する。

**共変性(covaiance)** は **不変性(invariance)** とは異なる。例えばスカラー量は座標変換で値そのものを変えないので不変(invariant)である。一方、運動方程式は、座標変換によりベクトルの値は変更を受けるが、形を変えない。従って、線形変換で移ることができる異なる座標系に住む人にとって、同じ形の法則が成り立つ。

同様に、ニュートンの運動方程式はある座標に対して等速直線運動する座標系から見ても形を変えない。これは、以下の座標変換に対応する。

$$
\tilde{\boldsymbol{x}} = \boldsymbol{x} + \boldsymbol{v}t + \boldsymbol{c}
$$

ニュートンの運動方程式は座標の一般の線形変換に対して共変であるが、系のスケールを変える変換はエネルギースケールを変えてしまうため、スケール変換を伴わない線形変換のみを考慮することが多い。スケール変換を伴わない線形変換は、回転と鏡映変換に分離できる。この、回転、鏡映変換、平行移動、等速度推進の変換をまとめて **ガリレイ変換(Galilean transformation)** と呼ぶ。ニュートンの運動方程式は、ガリレイ変換に対して共変である。

ガリレイ変換は、ある慣性系に対して加速度を持たない別の慣性系への座標変換を表現している。ニュートンの運動方程式がガリレイ変換により共変であるとは、ニュートンの運動方程式がすべての慣性系において同じ形をしていることを意味する。これは逆に、「どの慣性系から見ても同じ運動法則が成り立つようにニュートンの運動方程式が構成されている」と考えることもできる。「どの慣性系から見ても同じ運動法則が成り立つ」という要請をガリレイの相対性原理と呼ぶ。一方、電磁場の基礎方程式であるマクスウェルの方程式は、ガリレイ変換に対して共変ではないが、ローレンツ変換に対して共変性を持つ。ローレンツ変換において、物体の速度が光速に対して無視できるという近似をするとガリレイ変換に帰着する。アインシュタインは運動方程式やマクスウェル方程式を含む全ての物理法則が、あらゆる慣性系から同じように見えなければならないという原理を要請することで、特殊相対性理論を用いた。この要請を特殊相対性原理と呼ぶ。

一般に、物理法則を記述する支配方程式がどのような変換に対して共変であるかを議論するのは重要である。今後、ラグランジュ形式の力学、ハミルトン形式の力学においても、その方程式がどのような変換に対して共変であるかを議論していく。

### 極座標

## 点変換とラグランジアンの共変性

ラグランジアンを一般化座標$q$と一般化速度$\dot{q}$の関数、$L(\dot{q},q)$で書いておくと、オイラー・ラグランジュの運動方程式
$$
\frac{d}{dt}\left(\frac{\partial L}{\partial \dot{q}} \right) - \frac{\partial L}{\partial q} = 0
$$
が変数変換によって形を変えない。ラグランジアンの共変性は多変数の時にこそ活きるが、かなり式変形がややこしくなるので、まずは一変数の場合について見てみよう。

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

と書かれる。さらに、ラグランジアンにおいて$L(\dot{q}, q)$とし、$\dot{q}$と$q$は独立だとみなすが、ラグランジアンを時間積分する際には$q$と$\dot{q}$には$\dot{q} = dq/dt$の関係がある。これを記号の節約をせずにきちんと書くなら、ラグランジアンを$L(v, x)$と異なる記号で書いておけば独立であることがわかりやすく、これを時間積分する際には積分路が$s(t)$で指定されるとして、$x = s(t)$、$v = \dot{s}(t)$と表記することにすれば、$x$と$v$がどのような関係があるのかがわかりやすい。媒介変数であることがわかりやすいように$\xi$や$\eta$といった記号を使う流儀もある。しかし、このように表記すると記号が増え、かえって本質が見えづらいと感じる人もいるであろう。大多数の読者は深く考えず、なんとなく「そういうものだ」と納得するであろうし、今はそれで良いと思う。もし将来、真面目に計算して何が独立で何がそうでないか混乱した時に、混乱の原因が変数の節約にあるかもしれないと思い至ればそれで良い。どうせ解析力学をきちんと理解するのは時間がかかる。まずはざっと式変形の地図を頭にイメージできるようにして、あとで「あれ？」と思ったら別の書籍を調べて正確な理解を目指せば良い。
