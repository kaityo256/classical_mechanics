# ハミルトン形式の力学

## 本章の目的

ここではラグランジアンをルジャンドル変換することにより、ハミルトニアンという新しい量が得られること、これがエネルギーに対応していること、さらにハミルトン形式の力学が得られることを見る。

## 一般化運動量とハミルトニアン

## ルジャンドル変換

## 余談：双対変換

双対変換とは要するに「2回行うと元にもどる変換」のことである。例えば鏡に映る自分は左右が逆になるが、もう一度鏡に映すと元にもどる。すなわち鏡映変換は双対変換である。こういった双対変換の中で興味深いのは、正多面体の双対性である。

正多面体とは、同じ正多角形だけで構成された凸多面体のことである。正多面体は、ある頂点にどんな多角形が何個接しているかで特徴づけることができる。そこで、それぞれの頂点に正$m$角形が$n$個接している正多面体を$(m,n)$と表記してみよう。例えば立方体は、一つの頂点に正方形が3つ接しているから$(4,3)$と表記できる。さて、最小の多角形は三角形であるから$m \geq 3$でなければならない。また、立体を構成するためには一つの頂点に最低でも3つの図形を繋げなくてはならないから$n \geq 3$である。正六角形を3つなげてしまうと平面になってしまうから、正多面体に使えるのは正三角形、正方形、正五角形に限られる。正三角形は一つの頂点に3個、4個、5個つなげることができる。これにより$(3,3)$、$(3,4)$、$(3,5)$の組み合わせが可能であり、それぞれ正四面体、正八面体、正二十面体に対応する。正方形は4つなげると平面になってしまうために3個だけしかつなげることができない。すなわち$(4,3)$だけが可能であり、立方体に対応する。同様に正五角形も3個しかつなげることができず、$(5,3)$は正十二面体に対応する。以上のように、一つの頂点に正$m$角形を$n$個つないで正多面体を作る組み合わせは$(3,3)$、
$(3,4)$、$(3,5)$、$(4,3)$、$(5,3)$の5種類しかなく、それが正多面体が5種類しかないことに対応する。

TODO:図解

さて、立方体を思い浮かべて欲しい。立方体には面が6枚あるが、それぞれの面の重心を結んでみると、正八面体になる。これを$(m,n)$の言葉で書くと、$(4,3)$が$(3,4)$になっている。正八面体の面の重心を結ぶと立方体に戻る。すなわち、面と点を入れ替える変換は双対変換になっており、これは$(m,n)$の$m$と$n$を入れ替える変換になっている。これにより、立方体$(4,3)$と正八面体$(3,4)$、正十二面体$(5,3)$と正二十面体$(3,5)$がそれぞれ双対であることがわる。なお、正四面体$(3,3)$は双対変換で形を変えない。これを自己双対という。

大学で習う双対変換のうち、特に重要なのはフーリエ変換である。フーリエ変換は逆変換で元に戻るから双対変換の一種である。フーリエ変換により、時間で表された空間から周波数で表された空間に移ることができる。つまり時間と周波数は双対の関係にある。実空間と波数空間も同様である。微分方程式を解く手段として教わるフーリエ変換が、「何かを裏返す操作である」と認識できれば、何か世界が広がった気がしないだろうか？