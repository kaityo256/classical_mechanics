# 微分形式

## 外積と外微分

正準変換において母関数$W_1$の全微分が以下のように与えられることを見た。

$$
dW_1 = -pdq + PdQ
$$

ここから$W_1$の自由変数が$(q, Q)$であることがわかるため、その全微分が

$$
dW_1(q,Q) = \frac{\partial W_1}{\partial q} dq + \frac{\partial W_1}{\partial Q} dQ
$$

となるため、先程の式と比較することで変換則

$$
\begin{aligned}
p &= - \frac{\partial W_1}{\partial q}\\
P &= \frac{\partial W_1}{\partial Q}
\end{aligned}
$$

を得る。これを見ると、最初の式

$$
dW_1 = -pdq + PdQ
$$

について、形式的に両辺を$dq$や$dQ$で割わった形になっていることがわかる。すなわち、自由変数同士の割り算は、自分自身なら1、そうでなければ0、それ以外は偏微分とする、すなわち、

$$
\begin{aligned}
\frac{dq}{dq} &\equiv 1 \\
\frac{dQ}{dq} &\equiv 0 \\
\frac{dW_1}{dq} &\equiv \frac{\partial W_1}{\partial q} \\
\end{aligned}
$$

というルールを定めることで、以下の関係式を得ることができる。

$$
p = -\frac{\partial W_1}{\partial q}
$$

このルールをもう少しきちんと論じるため、微分形式を導入しよう。

任意の次元の空間で議論できるが、わかりやすさのために3次元空間$(x,y,z)$で考えよう。この空間に定義されたスカラー関数$f(x,y,z)$を考える。この関数の全微分を以下のように定義する。

$$
df \equiv \frac{\partial f}{\partial x}dx + \frac{\partial f}{\partial y}dy + \frac{\partial f}{\partial z}dz
$$

これは、$dx, dy, dz$を基底としたベクトルとみなすことができる。スカラー関数を全微分したものを1次微分形式、もしくは単純に **$1$形式(1-form)** と呼ぶ。また、微分する前のスカラー関数を **0形式(0-form)** と呼ぶ。一般に、$p$形式を微分することで$p+1$形式を作ることができる。この時得られた$p+1$形式を、元の$p$形式の外微分と呼ぶ。

ここで、外積記号$\wedge$により、以下の性質を持つ外積を定義する。

* 同じ基底の外積はゼロ
* 外積の両辺を入れ替えると負符号がつく

すなわち、

$$
\begin{aligned}
dx \wedge dx &= 0 \\
dx \wedge dy &= - dy \wedge dx
\end{aligned}
$$

である(他の基底も同様)。この外積記号を用いて、任意の$1$形式の間の外積を考えよう。
以下のように2つの1形式が与えられたとする。

$$
\begin{aligned}
du &= u_x dx + u_y dy + u_z dz\\
dv &= v_x dx + v_y dy + v_z dz
\end{aligned}
$$

この2つの$1$形式の外積は、先程の外積の性質を用いると以下のように計算できる。

$$
\begin{aligned}
du \wedge dv &= (u_x dx + u_y dy + u_z dz) \wedge (v_x dx + v_y dy + v_z dz) \\
&=
(u_x v_y  - u_y v_x ) dx \wedge dy
+(u_y v_z  - u_z v_y ) dy \wedge dz
+(u_z v_x  - u_x v_z ) dz \wedge dx
\end{aligned}
$$

さて、外積を用いて外微分を定義しよう。いま、$1$形式が

$$
df = f_x dx +  f_y dy +  f_z dz
$$

と書かれている時、この外微分を

$$
d(df) = df_x \wedge dx + df_y \wedge dy + df_z \wedge dz
$$

と定義する。

$f_x$はスカラー関数、すなわち$0$形式であり、一般に$x,y,z$の関数であるから、その外微分は

$$
df_x = \frac{\partial f_x}{\partial x} dx
* \frac{\partial f_y}{\partial y} dy
* \frac{\partial f_z}{\partial z} dz
$$

で与えられる。$f_y, f_z$も同様である。したがって、

$$
d(df) =
\left(\frac{\partial f_x}{\partial y} - \frac{\partial f_y}{\partial x}\right) dx \wedge dy
* (\frac{\partial f_y}{\partial z} - \frac{\partial f_z}{\partial y}) dy \wedge dz
* (\frac{\partial f_z}{\partial x} - \frac{\partial f_x}{\partial x}) dz \wedge dx
$$

となる。$dx\wedge dy$など、$1$形式の外積で作られた新たな基底で表現されたものを$2$形式と呼ぶ。すなわち$1$形式を外微分することで$2$形式を作ることができた。同様にして、$p$形式を外微分することで$p+1$形式を作ることができる。

さて、微分形式では、$dx$や$dy$といった基底ベクトルや、その外積により作られた基底で張られた量を考える。これらはベクトルであるから、双対基底を考えることで内積を考えることができる。イメージとしては、ベクトルのテンソル積により、行列の基底を作ることができるのと同様である。例えば3次元の基底$\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3$が与えられた時、その双対基底$\mathbf{e}^1, \mathbf{e}^2, \mathbf{e}^3$を使って、3行3列の行列Aの要素が

$$
A = A^i_j \mathbf{e^j} \otimes \mathbf{e_i}
$$

で展開されたことに対応する。ただし、行列は縦ベクトルと横ベクトルのテンソル積から作ったため、縦ベクトルと内積を取ると縦ベクトルが得られたが、微分形式の場合は縦ベクトルと縦ベクトルのテンソル積から2形式を作っているため、横ベクトルと内積をとることで縦ベクトルが得られるという違いがある。また、微分形式の外積は反対称性を持つため、ベクトルの言葉で言えば

$$
\mathbf{e_x} \wedge \mathbf{e_y} \equiv \mathbf{e_x} \otimes \mathbf{e_y} -
\mathbf{e_y} \otimes \mathbf{e_x}
$$

のように定義されているという違いがあることが注意。

以前説明したように、1形式の基底$dx$に対しては、偏微分演算子$\partial_x$が双対基底となり、以下のような自然な内積を考えることができる。

$$
\begin{aligned}
\left<dx, \frac{\partial}{\partial x} \right> &= \frac{\partial x}{\partial x} = 1\\
\left<dy, \frac{\partial}{\partial x} \right> &= \frac{\partial y}{\partial x} = 0\\
\end{aligned}
$$

すなわち、対応する双対基底と内積をとったら1、そうでなければ0となるため、$dx, dy, dz$と、$\partial_x, \partial_y, \partial_z$は正規直交基底をなす。

2形式との内積については、一番左のものと内積をとると約束する。すなわち、

$$
\begin{aligned}
\left<dx \wedge dy, \frac{\partial}{\partial x} \right> & \equiv
\left<dx, \frac{\partial}{\partial x} \right> dy \\
&=1
\end{aligned}
$$

対応する双対ベクトルが一番左になかった場合は、入れ替えることで一番左に持ってくる。その際、入れ替えた回数だけ負符号がつく。

$$
\begin{aligned}
\left<dy \wedge dx, \frac{\partial}{\partial x} \right> & =
* \left<dx \wedge dy, \frac{\partial}{\partial x} \right> \\
&= -\left<dx, \frac{\partial}{\partial x} \right> dy \\
&=1
\end{aligned}
$$

この全微分と外積のルールは、多変数間の変換のヤコビアンを一般化したものになっている。簡単な例を挙げよう。

二次元の極座標表示を考える。

$$
\begin{aligned}
x &= r \cos \theta \\
y &= r \sin \theta
\end{aligned}
$$

$x, y$を$r, \theta$の関数だと思って、それぞれ全微分してみよう。

$$
\begin{aligned}
dx &= \cos \theta dr - r\sin \theta d\theta\\
dy &= \sin \theta dr + r\cos \theta d\theta
\end{aligned}
$$

定義に従って$dx \wedge dy$を計算する。

$$
\begin{aligned}
dx \wedge dy &= (\cos \theta dr - r\sin \theta d\theta) (\sin \theta dr + r\cos \theta d\theta) \\
&= r \cos^2 \theta dr \wedge d\theta - r \sin^2 \theta d\theta \wedge dr \\
&= r dr \wedge d\theta
\end{aligned}
$$

途中で$dr \wedge dr = d\theta\wedge d\theta =0$及び$d\theta \wedge dr = - dr \wedge d\theta$を用いた。これが、積分におけるヤコビアン

$$
\begin{aligned}
dx dy &= \frac{\partial (x,y)}{\partial r, \theta} dr d\theta\\
&= r dr d\theta
\end{aligned}
$$

に対応することがわかる。

## 微分形式とベクトル解析

## 微分形式による正準方程式の表式

解析力学を微分形式で表現する準備が整った。まず、正準変換の条件を微分形式で表現しよう。今、変数$(q,p)$から$(Q,P)$に変数変換をしたとする。この時、$2$形式$dP \wedge dQ$を考える。$Q$、$P$は$(q,p)$の関数であるから、

$$
\begin{aligned}
dQ &= \frac{\partial Q}{\partial q}dq + \frac{\partial Q}{\partial p}dp\\
dP &= \frac{\partial P}{\partial q}dq + \frac{\partial P}{\partial p}dp
\end{aligned}
$$

$dP \wedge dQ$に代入して計算すると、

$$
\begin{aligned}
dP \wedge dQ &= \left(\frac{\partial P}{\partial q}dq + \frac{\partial P}{\partial p}dp \right)
\left(\frac{\partial Q}{\partial q}dq + \frac{\partial Q}{\partial p}dp\right) \\
&= \left(\frac{\partial P}{\partial p}\frac{\partial Q}{\partial q} - \frac{\partial P}{\partial q}\frac{\partial Q}{\partial p} \right) dp\wedge dq
\end{aligned}
$$

すなわち、$(q,p)$から$(Q,P)$への変換のヤコビアンが現れる。正準変換の条件はヤコビアンが1であることであったから、

$$
dP \wedge dQ = dp \wedge dq
$$

が成り立つことが正準変換の条件となる。このように、正準共役な変数同士を結んだ2形式を **正準2形式(canonical 2-form)** と呼び、一般に$\omega$で表すことが多い。

$$
\omega = dp \wedge dq = dP \wedge dQ
$$

すなわち、正準2形式は正準変換で不変である。

正準2形式を使うと、正準方程式を内積の形で書くことができる。正準方程式のリュービル演算子を考えよう。リュービル演算子とは、任意の物理量の時間微分を与える演算子であった。

$$
-i\mathcal{L}A = \frac{dA}{dt}
$$

虚数単位は負符号については今はあまり気にしなくて良い。$A$が$(q,p)$の関数であり、$(q,p)$が時間の関数であるなら

$$
\begin{aligned}
\frac{dA}{dt} &= \frac{\partial A}{\partial q} \dot{q} +
\frac{\partial A}{\partial p} \dot{p}\\
&= \underbrace{\left(\dot{q}\frac{\partial }{\partial q} + \dot{q} \frac{\partial}{\partial p}\right)}_{-i\mathcal{L}}A
\end{aligned}
$$

したがって、

$$
-i\mathcal{L} = \dot{q} \frac{\partial}{\partial q} + \dot{p} \frac{\partial}{\partial p}
$$

であることがわかる。このリュービル演算子と正準2形式の内積を取る。

$$
\begin{aligned}
\left<\omega, -i\mathcal{L}  \right>  &= \left<dp\wedge dq, \dot{q} \frac{\partial}{\partial q} + \dot{p} \frac{\partial}{\partial p} \right> \\
&= \dot{p}dq - \dot{q}dp
\end{aligned}
$$

ハミルトニアン$H(q,p)$の全微分は

$$
dH = \frac{\partial H}{\partial q}dq + \frac{\partial H}{\partial p}dp
$$

であるから、

$$
\left<dp\wedge dq, -i\mathcal{L} \right> = -dH
$$

が、正準方程式を与える。

多自由度の場合も同様であり、正準2形式

$$
\omega = dp_i \wedge dq^i
$$

と、リュービル演算子

$$
-i\mathcal{L} = \dot{q}^i\frac{\partial}{\partial q^i}+\dot{p}_i\frac{\partial}{\partial p_i}
$$

を用いて

$$
\left<\omega, -i\mathcal{L}\right> = -dH
$$

が正準方程式を与える。正準2形式は正準変換で不変であるから、これは局所基底の取り方に依らない運動方程式の表現となっている。
