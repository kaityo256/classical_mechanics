# 正準変換

* 正準変換
* 母関数

## 本章で学ぶこと

ハミルトンの運動方程式を共変に保つような変数変換を正準変換と呼ぶ。以下では正準変換を様々な角度から考察する。

## 正準変換

オイラー・ラグランジュ方程式は任意の点変換について共変であった。ハミルトンの運動方程式は、$p$ と$q$ を混ぜるような、より広い範囲の変換について共変であるが、自由に変換可能というわけではなく、その変換規則には制限がつく。いま、変数変換 $(q,p) \rightarrow (Q, P)$ により、ハミルトンの運動方程式が共変に保たれるためには、どのような条件が必要であるかを調べてみよう。

新たな変数$(Q, P)$は、元の変数 $(q,p)$の関数である。例えば、関数$f,g$ を用いて

$$
\begin{aligned}
Q &= f(q,p) \\
P &= g(q,p)
\end{aligned}
$$

などと表せる時、この$f, g$を$Q, P$と同一視し、

$$
\begin{aligned}
Q &= Q(q,p) \\
P &= P(q,p)
\end{aligned}
$$

と同じ記号を使って書く。$P$ は新たな変数でもあるし、変換を表す関数でもある。また、$(p,q) \rightarrow (P,Q)$ の逆変換 $(P,Q) \rightarrow (p,q)$ を考える。やはりこの場合も関数$F,G$を用いて

$$
\begin{aligned}
q &= F(Q,P) \\
p &= G(Q,P)
\end{aligned}
$$

と書ける時に、$F,G$を$q,p$と同一視する。

このような記号の節約が混乱しがちなのは、同じ関数を別の変数で表現したときだ。例えば $(q,p)$で表されたハミルトニアン $H(q,p)$を考える。このハミルトニアンを$(Q,P)$を使って書き直すには、$q = F(Q,P), p=G(Q,P)$を使って$q,p$に代入し

$$
H(p,q) = H(F(Q,P), G(Q,P))
$$

と書ける。右辺は変数 $(Q,P)$の関数であるから、

$$
H(q,p) = H(Q,P)
$$

と略記する。このような記号の節約は混乱を招くこともあるが、記号を区別すると式が煩雑になるので、「これは変数であるから、関数であるか」を意識しながら計算を追って欲しい。

我々が調べたいことは、元の変数 $(p,q)$がハミルトンの運動方程式

$$
\begin{aligned}
\dot{q} &= \frac{\partial H}{\partial p} \\
\dot{p} &= -\frac{\partial H}{\partial q} \\
\end{aligned}
$$

を満たす時、新たな変数 $(P,Q)$ が同じ形の運動方程式

$$
\begin{aligned}
\dot{Q} &= \frac{\partial H}{\partial P} \\
\dot{P} &= -\frac{\partial H}{\partial Q} \\
\end{aligned}
$$

を満たすための条件である。まず、ハミルトニアンを$(Q,P)$で書いておく。そして$(Q,P)$を$(q,p)$の関数だと思って偏微分しよう。

$$
\begin{aligned}
\dot{q} &= \frac{\partial H}{\partial p} \\
&= \frac{\partial H(Q(q,p),P(q,p))}{\partial p} \\
&= \frac{\partial H}{\partial Q}\frac{\partial Q}{\partial p}
+ \frac{\partial H}{\partial P}\frac{\partial P}{\partial p}
\end{aligned}
$$

同様に、

$$
\begin{aligned}
\dot{p} &= -\frac{\partial H}{\partial q} \\
&= -\frac{\partial H}{\partial Q}\frac{\partial Q}{\partial q}
- \frac{\partial H}{\partial P}\frac{\partial P}{\partial q}
\end{aligned}
$$

次に、新たな変数$Q$の時間微分を考えよう。計算がごちゃごちゃしがちなので、丁寧に計算する。

$$
\begin{aligned}
\dot{Q} &= \frac{d}{dt} Q(q,p) \\
&= \frac{\partial Q}{\partial q}\dot{q} +\frac{\partial Q}{\partial p} \dot{p} \\
&= \frac{\partial Q}{\partial q} \underbrace{\left( \frac{\partial H}{\partial Q}\frac{\partial Q}{\partial p}
+ \frac{\partial H}{\partial P}\frac{\partial P}{\partial p} \right)}_{\dot{q}} \\
&- \frac{\partial Q}{\partial p} \underbrace{\left( \frac{\partial H}{\partial Q}\frac{\partial Q}{\partial q} + \frac{\partial H}{\partial P}\frac{\partial P}{\partial q} \right)}_{\dot{p}}\\
&=\cancel{\frac{\partial Q}{\partial q} \frac{\partial H}{\partial Q}\frac{\partial Q}{\partial p}} + \frac{\partial Q}{\partial q}\frac{\partial H}{\partial P}\frac{\partial P}{\partial p} \\
&- \cancel{\frac{\partial Q}{\partial p}\frac{\partial H}{\partial Q}\frac{\partial Q}{\partial q}} - \frac{\partial Q}{\partial p}\frac{\partial H}{\partial P}\frac{\partial P}{\partial q} \\
&= \frac{\partial H}{\partial P}\left(\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q}   \right)
\end{aligned}
$$

詳細は省略するが$\dot{P}$も全く同様に計算できる。合わせて書くと、

$$
\begin{aligned}
\dot{Q} &=\frac{\partial H}{\partial P}\left(\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q} \right) \\
\dot{P} &= -\frac{\partial H}{\partial Q}\left(\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q} \right)
\end{aligned}
$$

したがって、変数変換$(p,q) \rightarrow (P,Q)$により、ハミルトンの運動方程式が共変であるためには、この変数変換が以下の条件を満たす必要がある。

$$
\frac{\partial Q}{\partial q}\frac{\partial P}{\partial p} - \frac{\partial Q}{\partial p}\frac{\partial P}{\partial q} = 1
$$

この条件を満たす変数変換を **正準変換(canonical transform)** と呼ぶ。先程の条件は、行列式の形にまとめることができる。

$$
\begin{vmatrix}
\partial_q Q & \partial_p Q \\
\partial_q P & \partial_p P
\end{vmatrix}
=1
$$

これは、変換$(p,q) \rightarrow (P,Q)$のヤコビアンに他ならない。すなわち、正準変換とは、変換のヤコビアンが1となるような変換のことである。逆に言えば、ヤコビアンが1でありさえすれば、どのような変換を行おうとハミルトンの運動方程式は共変である。点変換しか許容しなかったラグランジアンに比べて、変換の幅が広がったことがわかる。
