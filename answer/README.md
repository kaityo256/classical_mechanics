# 解答と解説


【1】

### 解答

(1) ア、イ、ウ

(2) ア、ウ

(3) なし

### 解説

力学的な条件と保存則の関係を問う問題である。複雑な問題が解けても、このように単純なことを改めて問われると誤答することが多い。

(1)

外力が働いていないため、運動エネルギー、並進運動量、角運動量は全て保存する。「中心力が働いている時に角運動量が保存する」と覚えていると、外力が働いていない場合に「角運動量が保存しない」と誤答することが多い。

角運動量の保存については以下のように直接示すことができる。系が等速直線運動をすることから、
$$
    \begin{aligned}
    x(t) & = x(0) + \dot{x} t, \\
    y(t) & = y(0) + \dot{y} t
    \end{aligned}
$$
となる。従って、
$$
    \begin{aligned}
    x\dot{y} - y\dot{x} & = (x(0) + \dot{x}  t)\dot{y} - (y(0) + \dot{y}  t)\dot{x} \\
                        & =  x(0)\dot{y} - y(0) \dot{x}.
    \end{aligned}
$$
今、$\dot{x}, \dot{y}$は時間依存しない、すなわち時間微分するとゼロであるから、$x\dot{y} - y\dot{x}$の時間微分もゼロ、すなわち保存量である。

また、中心力ポテンシャル$U(r)$の特別な場合であり、極座標表示のハミルトニアン
$$
    H = \frac{1}{2m}\left(p_r^2 +\frac{p_\theta^2}{r^2}\right)
$$
からハミルトニアンに$\theta$依存性がなく、$\dot{p}_\theta = -\partial_\theta H=0$からも角運動量保存がわかる。

(2)

全エネルギー及び原点周りの角運動量が保存する。ラグランジアンを学んだ直後であると、保存量とラグランジアンを混同し、イが保存すると誤答しやすい。

(3) 

全エネルギー及び$x$方向の運動量のみ保存するが、選択肢に存在しない。ウの位置エネルギーを保存すると誤答することが多い。

【2】

(1) 質点$A$の$x$方向、$y$方向の釣り合い。
$$
    \begin{aligned}
    T \sin \theta & = N \sin \phi      \\
    T \cos \theta & = N \cos \phi + mg
    \end{aligned}
$$

質点$B$の$x$方向、$y$方向の釣り合い。
$$
\begin{aligned}
N \sin \phi & = F  \\
N \cos \phi & = Mg
\end{aligned}
$$

(2)
$$
\begin{aligned}
x & = l \sin \theta                \\
y & = -l \cos \theta               \\
X & = l (\sin \theta + \sin \phi)  \\
Y & = -l (\cos \theta + \cos \phi)
\end{aligned}
$$

(3)
$$
\begin{aligned}
\delta x  & = l \cos \theta \delta \theta                           \\
\delta y  & = l \sin \theta \delta \theta                           \\
\delta X  & = l (\cos \theta \delta \theta + \cos \phi \delta \phi) \\
\delta  Y & = l (\sin \theta \delta \theta + \sin \phi \delta \phi) \\
\end{aligned}
$$

(4)
$$
\begin{aligned}
F_\theta & = (m+M)lg \sin \theta - Fl \cos \theta \\
F_\phi   & =  Mlg \sin \phi - Fl \cos \phi
\end{aligned}
$$

(5)
$$
\begin{aligned}
\tan \theta & = \frac{F}{(m+M)g} \\
\tan \phi   & =  \frac{F}{Mg}
\end{aligned}
$$

### 解説

解析力学ではお約束の二重振り子の問題。お約束ではあるが、一般化座標や仮想仕事の理解の確認に便利である。

【3】

### 解答

(1) 

$$
\begin{aligned}
x_g & = \frac{x}{2} + \frac{X}{4}                            \\
y_g & = \frac{y}{2} + \frac{Y}{4}
\end{aligned}
$$

(2)

$$
\begin{aligned}
x & = l \sin \theta                            \\
y & = - l \cos \theta                          \\
X & = l (\sin \theta - \sin (\theta + \phi))   \\
Y & = - l (\cos \theta - \cos (\theta + \phi)) \\
\end{aligned}
$$

(3)
$$
    3 \sin \theta = \sin (\theta + \phi)
$$

### 解説

ヒンジと糸を持つ系の釣り合い条件である。ラグランジアンによる記述や、仮想仕事の原理を学ぶ際、やや複雑な機械的構造を扱うことが多い。この問題もその例にもれずやや複雑な系だが、重心の$x$座標がゼロとなるため、やや問題が解きやすくなっている。

(1)

棒$OA$の重心の座標が$(x/2, y/2)$、棒$AB$の重心の座標が$((x+X)/2, (y+Y)/2)$であることから、
$$
    \begin{aligned}
    x_g & = \frac{1}{2}\left(\frac{x}{2} + \frac{x+X}{2} \right) \\
        & = \frac{x}{2} + \frac{X}{4},                            \\
    y_g & = \frac{y}{2} + \frac{Y}{4}.
    \end{aligned}
$$

(2)

極座標の定義から導出は容易であろう。

(3)

重心座標$y_g$による位置エネルギーの変化を考えれば良い。総質量が$2m$であることに注意。

$$
    \begin{aligned}
    W & = 2mg \delta y_g                                                               \\
        & = \frac{mgl}{2} \left( 3 \sin \theta - \sin(\theta + \phi)\right)\delta \theta \\
        & = F_\theta \delta \theta.
    \end{aligned}
$$
従って、
$$
    F_\theta =  \frac{mgl}{2} \left( 3 \sin \theta - \sin(\theta + \phi)\right).
$$

また、釣り合いと座標の取り方から、「$x$座標の重心位置が$0$でなければならない」という条件を使っても求めることができる。
$$
    \begin{aligned}
    x_g & = \frac{x}{2} + \frac{X}{4}                                                 \\
        & = \frac{l}{2} \sin \theta + \frac{l}{4} (\sin \theta - \sin(\theta + \phi)) \\
        & = \frac{l}{4}\left(3\sin \theta - \sin(\theta + \phi) \right)               \\
        & = 0.
    \end{aligned}
$$

【4】

### 解答

(1)
$$
    \frac{1}{2}m (\dot{r}^2 + r^2 \dot{\theta}^2)
$$

(2)

$$
    \frac{1}{2}m (\dot{r}^2 + r^2 \dot{\theta}^2) - U(r)
$$

(3)

$$
    \begin{aligned}
    m(\ddot{r} - r \dot{\theta}^2)    & = - U'(r) \\
    m \frac{d}{dt} (r^2 \dot{\theta}) & = 0
    \end{aligned}
$$

### 解説

角運動量保存則がラグランジュの運動方程式として直接現れる例である。最初にラグランジアンを扱う際は、二次元極座標を扱うのがわかりやすいであろう。

【5】

### 解答

合成関数の微分公式から
$$
    \frac{dF}{dx} = \frac{\partial F}{\partial f}f'+\frac{\partial F}{\partial f'}f''.
$$
また、オイラー・ラグランジュ方程式より
$$
    \frac{d}{dx}\left(\frac{\partial F}{\partial f'}\right) = \frac{\partial F}{\partial f}.
$$
以上より、
$$
    \begin{aligned}
    \frac{dB}{dx} & = \frac{d}{dx} \left( F - f' \frac{\partial F}{\partial f'}\right)                                                                               \\
                    & = \underbrace{\frac{dF}{dx}}_{f' \partial_f F  + f''\partial_f' F} - f'' \frac{\partial F}{\partial f'}
    -  f' \underbrace{\frac{d}{dx}\left(\frac{\partial F}{\partial f'}\right)}_{\partial_f F}                                                                        \\
                    & = f' \frac{\partial F}{\partial f} + f'' \frac{\partial F}{\partial f'} - f'' \frac{\partial F}{\partial f'} -  f' \frac{\partial F}{\partial f} \\
                    & = 0.
    \end{aligned}
$$
以上から、$dB/dx = 0$が示された。

### 解説

解析力学において頻出する合成関数の微分ができるか問う問題である。変分原理においてベルトラミの公式は頻繁に利用するため、一度導出しておくと良い。

【6】

### 解答

(1)
$$
\begin{aligned}
P_1 & = p_1 + p_2 \\
P_2 & = p_1 - p_2
\end{aligned}
$$

(2)
$$
H = \frac{1}{4m}(P_1^2+P_2^2) + U(2Q^2)
$$


(3)
$$
\{P_1, H\} = 0
$$

(4)
$$
\{P_2, H\} = - 2U'(2Q^2)
$$

### 解説

変数変換により、重心の運動量が保存することを確認する問題である。

(1)

きちんと定義にもどって計算する。

$$
\begin{aligned}
q^1 & = Q^1+Q^2, \\
q^2 & = Q^1-Q^2
\end{aligned}
$$
であるから、
$$
\begin{aligned}
\dot{q}^1 & = \dot{Q}^1+\dot{Q}^2, \\
\dot{q}^2 & = \dot{Q}^1-\dot{Q}^2.
\end{aligned}
$$
ここで、一般化運動量の定義から、
$$
\begin{aligned}
P_1 & = \frac{\partial L}{\partial \dot{Q}^1}                                                                                                                                 \\
    & = \frac{\partial L}{\partial \dot{q}^1}\frac{\partial \dot{q}^1}{\partial \dot{Q}^1}+\frac{\partial L}{\partial \dot{q}^2}\frac{\partial \dot{q}^2}{\partial \dot{Q}^1} \\
    & = p_1 + p_2.
\end{aligned}
$$
同様に、
$$
P_2 = p_1 - p_2.
$$

定義に戻らないと、2のファクターをよく間違える。

(2) 

新しい運動量を$P_1 = p_1+p_2$と定義するか$P_1 = (p_1+p_2)/2$と定義するかによって、変換後のハミルトニアンの係数が変わることに注意。

(3)

$$
\{P_1, H\} = 0
$$

より、$P_1$が時間不変量であることがわかる。一方、相対運動量である$P_2$は保存しない。

$$
\{P_2, H\} =- \frac{\partial H}{\partial Q^2} = - 2U'(2Q^2).
$$

微分により、係数$2$が出てくることに注意。

【7】

### 解答

(1)
$$
\begin{aligned}
Q^1 & = q^1 + \varepsilon \frac{p_1}{m} \\
P_1 & = p_1 - \varepsilon k q^1         \\
Q^2 & = q^2 + \varepsilon \frac{p_2}{m} \\
P_2 & = p_2 - \varepsilon k q^2
\end{aligned}
$$

(2)
$$
\begin{aligned}
Q^1 & = q^1 - \varepsilon q^2 \\
P_1 & = p_1 - \varepsilon p_2 \\
Q^2 & = q^2 + \varepsilon q^1 \\
P_2 & = p_2 + \varepsilon p_1
\end{aligned}
$$

### 解説

それぞれ、(1)が微小な時間発展、(2)が微小な回転操作に対応している。この操作によるハミルトニアンの変化が高次となり、それぞれの$J$が保存量となっている。
