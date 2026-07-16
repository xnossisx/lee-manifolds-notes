#let qed = {h(1fr); sym.wj; sym.space.nobreak; $qed$}
#smallcaps([Vector Fields, Up to Lie Algebras on Lie Groups])

A vector field on a smooth manifold $M$ is a section of the projection map $pi: T M arrow M$. We can naturally add labels to this concept, such as continuous, differentiable, or smooth. In particular, general vector fields are often called rough vector fields. Now, assume that $(U, (x^i))$ is a coordinate chart. Then a rough vector field $X$ can be given local coordinates $X_p = sum_i X^i_p partial/(partial x^i)|_p$. These are the local coordinate functions of $X$ on $U$.

Proposition 1. [Smoothness Criterion] Let $M$ be a smooth $m$-manifold, and let $X: M arrow T M$ be a rough vector field. For any chart $(U, (x^i))$ on $M$, $X|_U$ is smooth if $X$'s component functions on $U$ are smooth. 

_Proof_. Take the trivializing coordinates on $T M$ for $U$, so that the coordinate representation of $X|_U$ acts by sending  $x=(x^1,...,x^m)$ to $(x^1,...,x^m, X^1 (x),...,X^m (x))$. This representation is smooth iff the component functions are smooth, and in turn iff $X|_U$ is smooth, by definition. #qed

#smallcaps([Restricting Vector Fields To Curves])

Definition. Let $M$ be a smooth manifold with or without boundary, and let $A subset.eq M$. A vector field along $A$ is a continuous map $X: A arrow T M$ such that $pi compose X = id_A$. In addition, $X$ is termed a smooth vector field along $A$ if, for every $p in A$, there is a neighborhood $V$ of $p$ in $M$ such that $X|_(A inter V)$ can be extended to a smooth vector field $tilde(X)$ on $V$.

Proposition 2. [Let's Extension Lemma Again] Let $M$ be a smooth manifold with or without boundary, and let $A subset.eq M$ be closed. Suppose that $X$ is a smooth vector field along $A$. Given any open $U$ containing $A$, there exists a smooth global vector field $tilde(X)$ on $M$ such that $tilde(X)|_A = X$ and $"supp"(tilde(X)) subset.eq U$.

_Sketch of proof_. For each $p in A$, take a chart $(V_p, x^i)$ containing $p$, shrinking $V_p$ to be contained in $U$ if necessary. Now, for each $i$, $partial/(partial x^i)|_p dot X^i|_(V_p inter A)$ can be extended to $tilde(X)^i_p$ on $V_p$, since $X^i$ is just a smooth function. Now, take a partition of unity ${psi_p}_(p in A)$ subordinate to the cover of $union.big_(p in A) V_p$ by the $V_p$, and let $tilde(X)^i (q) =  sum_(p in A) psi_p (q) tilde(X)^i_p (q)$. These functions match $partial/(partial x^i)|_p X^i$ on $A$, are smooth, and have support contained in $U$. Let $tilde(X)$ be $sum_i tilde(X)^i$. $tilde(X)$ has the same properties as the $tilde(X)^i$, except that it matches $X$ on $A$ instead.

Note. This is particularly useful for extending one tangent vector at a point, since one can extend such a vector to a local smooth vector field by using local tangent space coordinates.

Notation. The set of all smooth vector fields on the smooth manifold $M$ is often denoted $frak(X)(M)$, which is a $C^infinity (M)$-module with the action $(f X)_p = f(p) X_p$. This follows trivially from Proposition 1 and the additivity of smooth $RR$-valued functions.

Definition. Suppose $M$ is a smooth $m$-manifold with or without boundary. A set of rough vector fields ${X_1,...,X_k}$ on $A subset.eq M$ is said to be linearly independent if, for each $p in A$, ${X_1|_p,...,X_k|_p}$ forms a linearly independent set. Similar definitions can be made for spanning vector fields and local/global frames (you have three guesses to figure out what this means). If each vector field in a global frame is smooth, the frame may be called smooth. Sometimes, the definition is modified to use $k$-tuples.

Proposition 3. Let $M$ be a smooth $n$-manifold with or without boundary.

#set enum(numbering: "(a)")
+ For each linearly independent set of $k$ smooth vector fields defined on an open $U subset.eq M$, if $1<=k<n$, then for each $p in U$, there exist $n-k$ smooth vector fields defined on an open neighborhood $V$ of $p$ such that the combined vector fields define a smooth local frame on $U inter V$.
+ For each $p in M$, if ${v_1,...,v_k}$ is a set of linearly independent vectors in $T_p M$, then there exists a smooth local frame ${X_i}_(i=1)^(n)$ on a neighborhood of $p$ such that for $1<=i<=k$, $X_i|_p = v_i$.
+ If $A subset.eq M$ is closed and ${X_1,...,X_n}$ is a linearly independent $n$-tuple of vector fields on $A$, then there exists a smooth local frame ${tilde(X)_1,...,tilde(X)_n}$ on some neighborhood of $A$ such that $tilde(X)_i|_A = X_i$ for $i in [n]$.

Definition. A smooth manifold with or without boundary is said to be parallelizable if it admits a smooth global frame.

#smallcaps([Vector Fields as Sets of Derivations at Points])

If $X $ is a rough vector field on $M$, $U subset.eq M$  is open, and $f: U arrow RR$ is smooth, $X f : U arrow RR$ is defined by $(X f)(p) = X_p f$. This definition is useful, because the action of a tangent vector is locally determined, so restrictions of $X$ to open neighborhoods of $p$ can be pushed through the application.

Proposition 4. Let $X$ be a rough vector field on the smooth manifold $M$. The following are equivalent:

+ $X$ is smooth.
+ For all $f in C^(infinity) (M)$, $X f$ is smooth on $M$.
+ For every open $U subset.eq M$ and every $f in C^(infinity) (U)$, $X f$ is smooth on $U$.

_Proof_. We will prove (a) $=>$ (b) $=>$ (c) $=>$ (a).

For (a) $=>$ (b), assume $X$ is smooth and take $f in C^infinity (M)$. For any $p in M$, we can choose a chart $(U, (x^i))$ containing $p$. For $x in U$, $X f(x) = (X^i (x) frac(partial, partial x^i)|_x) f = X^i (x) frac(partial f, partial x^i)(x)$. By Proposition 1, the component functions are smooth on $U$, so $X f$ is also smooth on $U$. This is true in a neighborhod of each point, so $X f$ is smooth on $M$.

For (b) $=>$ (c), suppose $U subset.eq M$ is open and $f in C^infinity (U)$. Let $p in U$ and take a smooth bump function $psi$ equal to one in a neighborhood of $p$ and supported in $U$. Now $tilde(f) = f psi$ can be extended to be zero on $M \\ "supp" psi$, and $X tilde(f)$ is smooth by (b) and equals $X f$ on a neighborhood of $p$. So $X f$ is smooth in a neighborhood of each point of $U$.

For (c) $=>$ (a), we wish to show that each $X^i$ is smooth. Suppose $X f$ is smooth when $f$ is smooth on an open subset of $M$. Given an open chart $(U, (x^i))$ on $M$, each $x^i$ is a smooth function on $U$. Now $X x^i = X^j frac(partial, partial x^j) (x^i) = X^i$. So the $X^i$ and $X$ are smooth. #qed


A consequence of this result is that $X in frak(X)(M)$ induces a map from $C^infinity (M)$ to itself by $f arrow.bar X f$. This map is linear over $RR$, since derivations at points are linear maps. Also, $X (f g)(p) = X_p (f g) = g(p) X_p f + f(p) X_p g $, so $X$ is a derivation.

Proposition 5. Let $M$ be a smooth manifold with or without boundary. A map $D: C^infinity (M) arrow C^infinity (M)$ is a derivation iff it is of the form $D f = X f$ for some smooth vector field $X$ of $M$.

_Proof_. We only need to prove the forward direction. So take $D$ to be a derivation on $M$. If such a smooth vector field $X$ exists, then at $p in M$, $X_p f = (D f)(p)$. Because $D$ is linear, the left-hand expression is linear in $f$ as well, and since $D$ is a derivation, $X_p$ satisfies the product rule and is a tangent vector at $p$. So $X$ is a rough vector field. Because $X f = D f$ is smooth when $f$ is smooth, $X$ is smooth by Proposition 4. #qed

#smallcaps([Vector Fields and Smooth Maps])

For this section, let $M$ and $N$ be smooth manifolds with or without boundary, let $X$ be a rough vector field on $M$, and let $F: M arrow N$ be a smooth map.

Definition. Suppose that there is a rough vector field $Y$ on $N$ such that for each $p in M$, $d F_p (X_p) = Y_(F(p))$. Then $X$ and $Y$ are said to be $F$-related.

Proposition 6.  Suppose that $X$ is smooth and that $Y$ is a smooth vector field on $N$. Then $X$ and $Y$ are $F$-related iff for every smooth, real-valued function $f$ defined on an open subset of $N$, $X(f compose F) = (Y f) compose F$.

_Proof_. Given $p in M$, take $f$ as in the definition for an open neighborhood of $F(p)$. Then $ X(f compose F)(p) = X_p (f compose F) = d F_p (X_p) f, $ and $ ((Y f) compose F)(p) = (Y f) (F(p)) = Y_(F(p)) f. $ #qed 

So the equality in the proposition is true for all $f$ iff $d F_p (X_p) = Y_(F (p))$ for all $p$, and this happens exactly when $X$ and $Y$ are $F$-related. #qed

Proposition 7. Suppose that $F$ is a diffeomorphism. Then there is a unique smooth vector field on $N$ that is $F$-related to $X$.

_Proof_. By Proposition 6, the existance of such a vector field $Y$ on $N$ requires that $d F_p (X_p) = Y_(F(p))$. So we may define $Y$ by $Y_q = d F_(F^(-1) (q)) (X_(F^(-1) (q)))$. This argument shows that $Y$ is unique as well. Now $Y: N arrow T N$ is just $d F compose X compose F^(-1)$, so $Y$ is smooth. #qed

Definition. Following Proposition 7, we define the pushforward of $X$ by $F$, $F_* (X)$, to be the unique vector field that is $F$-related to $X$.

Note. Putting together Propositions 6 and 7, we find that when $F$ is a diffeomorphism, $((F_* X)f) compose F = X(f compose F)$.

#smallcaps([Vector Fields and Submanifolds])

Definition. Let $S$ be a smooth submanifold of the smooth manifold $M$. If $X$ is a vector field on $M$ and $p in S$, we say that $X$ is tangent to $S$ at $p$ if $X_p in T_p S$, where $T_p S$ is considered as part of $T_p M$. The vector field $X$ is tangent to $S$ if it is tangent to $S$ at all points in $S$.

Proposition 8. Let $M$ be a smooth manifold, $S subset.eq M$ an embedded submanifold with or without boundary, and $X$ a smooth vector field on $M$. Then $X$ is tangent to $S$ iff $(X f)|_S = 0$ for every $f in C^(infinity) (M)$ such that $f|_S equiv 0$.

_Proof_. This follows from one of the characterizations of tangent vectors to a submanifold. #qed

Observe that if $S subset.eq M$ is a smooth submanifold with or without boundary and $iota: S arrow.hook M$ is the inclusion map, then a vector field on $S$ can be $iota$-related to a vector field on $M$ only when the vector field on $M$ is tangent to $S$, since the image of the $S$-vector field must be contained in $d iota(T S)$.

Proposition 9. Let $M$ be a smooth manifold, let $S subset.eq M$ be an immersed submanifold with or without boundary, and let $iota: S arrow.hook M$ denote the inclusion map. If $Y in frak(X)(M)$ is tangent to $S$, then there is a unique smooth vector field on $S$, denoted by $Y|_S$, that is $iota$-related to $Y$.

_Proof_.  Since $Y$ is tangent to $S$, $Y_p in d iota_p (T_p S)$ for each $p in S$. So for each $p in S$, there exists $X_p in T_p S$ such that $Y_p$ is the image of $X_p$ under $d iota_p$. Now, $d iota_p$ is injective, so $X_p$ is unique and $X$ is a rough vector field on $S$. We just need to show that $X$ is smooth, in particular in a neighborhood of each point.

Let $p in S$. Since $X$ is locally embedded, we can take a neighborhood $V$ of $p$ in $S$ which is embedded in $M$. Let $(U, (x^i))$ be a (boundary) slice chart for $V$ in $M$ centered at $p$. Then $V inter U$ is the subset where $x^(k+1)=...=x^n=0$ and $x^k >= 0$ if $p in partial S$, and $(x^1,...,x^k)$ forms local coordinates for $S$ in $V inter U$. Since $Y = Y^1 partial/(partial x^1) + ... + Y^n partial/(partial x^n)$ in these coordinates for some smooth functions ${Y^i}^n_(i=1)$. Because $Y$ must be the image of $X$ under $d iota$, $X$ has the coordinate representation $Y^1 partial/(partial x^1) + ... + Y^k partial/(partial x^k)$, which is smooth on $V inter U$. #qed

#smallcaps([The Lie Bracket on Vector Fields])

Motivating example. We know that if $M$ is a smooth manifold, $X, Y in frak(X)(M)$, and $f in C^(infinity) (M)$, that $X f$ is a smooth real-valued function on $M$. Hence $Y X f$ is well-defined, but $Y X$ is not a derivation in general.

For example, let $M = RR^2$, $X = partial/(partial x)$, $Y = x partial/(partial y)$, $f(x,y)=x$, $g(x,y)=y$.

Now $Y X (f g) = Y X (x y) = Y (x X y + y X x) = Y (y) = x$, but $x Y X y + y Y X x = 0$. So $Y X$ is not a derivation.

Definition. Let $M$ be as mooth manifold. Given $X, Y in frak(X)(M)$, let $[X, Y] = X Y - Y X$.

Proposition 10. The Lie bracket of any two smooth vector fields is a vector field.

_Proof_. We take $M$ to be a smooth manifold and $X,Y in frak(X)(M)$. Firstly, since $X$ and $Y$ are linear in $RR$, so is $X Y$, $Y X$, and $[X,Y]$. Then $ [X,Y] (f g) = X Y (f g) - Y X (f g) = \ X (f Y g + g Y f) - Y (f X g + g X f) = \ f X (Y g) +  Y g X f + g X (Y f) + Y f X g - (f Y (X g) +  X g Y f + g Y (X f) + X f Y g) = \ f (X Y g - Y X g) + g (X Y f - Y X f). $
Now the derivation identity would suggest $ f X (Y g) + g X (Y f) - f Y X g - g Y X f, $
which is the same expression. #qed

In particular, at $p$, $[X, Y] f = X_p (Y f) - Y_p (X f)$. This requires computing higher-order derivatives of $f$, however.

Proposition 11. Let $X, Y$ be smooth vector fields on the smooth manifold $M$ with smooth local coordinate representations $X^i partial/(partial x^i)$ and $Y^i partial/(partial x_i)$, respectively. Then $[X, Y]$ has the coordinate representation

$ [X,Y] = (X^i frac(partial Y^j, partial x^i) - Y^j frac(partial X^j, partial x^i)) partial/(partial x^j) $

_Proof_. Since $[X, Y]$ is a vector field, its action on a function $f in C^infinity (M)$ is determined locally: that is, if $U$ is an open set of $M$, $([X, Y]f)|_U = [X, Y]f|_U$. So, we can compute this in a single chart, where we get $ X^i partial/(partial x^i) (Y^j (partial f)/(partial x^j)) - Y^j partial/(partial x^j) (X^i (partial f)/(partial x^i)) = \ X^i frac(partial Y^j, partial x^i) frac(partial f, partial x^j) + X^i Y^j frac(partial^2 f, partial x^i partial x^j) - Y^j frac(partial X^i, partial x^j) frac(partial f, partial x^i) - Y^j X^i frac(partial^2 f, partial x^j partial x^i), $
and the second and fourth terms cancel because $f$ is $cal(C)^1$ on $U$. So $[X,Y] = (X^i frac(partial Y^j, partial x^i) - Y^i frac(partial X^j, partial x^i))frac(partial, partial x^j)$ after a swap of indices.

Proposition 12. For all $X, Y, Z in frak(X)(M)$, $a,b in RR$, and all $f,g in C^oo (M)$:

+ $[a X + b Y, Z] = a[X, Z] + b[Y,Z]$ & $[X, a Y + b Z] = a[X, Y] + b[X, Z]$

+ $[X, Y] = -[Y, X]$

+ $[X, [Y, Z]] + [Z, [X, Y]] + [Y, [Z, X]] = 0$

+ $[f X, g Y] = f g [X Y] + (f X g) Y - (g Y f) X$.

_Proof_. (a) and (b) follow immediately from the definition, while (c) and (d) can be found using direct computation. #qed

Proposition 13. Let $F: M arrow N$ be a smooth map between manifolds with or without boundary, and let $X_1, X_2 in frak(X)(M)$ and $$$Y_1,Y_2 in frak(X)(N)$ be vector fields such that $X_i$ is $F$-related to $Y_i$ for $i in [2]$. Then $[X_1,X_2]$ is $F$-related to $[Y_1,Y_2]$. 

_Proof_. By Proposition 6 used twice, we have that $X_1 X_2 (f compose F) = X_1 ((Y_2 f) compose F) = (Y_1 Y_2 f) compose F$. The same thing takes place if $1$ and $2$ are swapped. So $[X_1, X_2](f compose F) = (Y_1 Y_2 f) compose F - (Y_2 Y_1 f) compose F = ([Y_1, Y_2]f) compose F$. #qed

Note. This implies that the pushforward distributes over Lie brackets.

Corollary 14. Let $M$ be a smooth manifold and $S$ an immersed submanifold with or without boundary in $M$. If $Y_1, Y_2$ are smooth vector fields on $M$ that are tangent to $S$, then $[Y_1, Y_2]$ is also tangent to $S$.

_Proof_. By Proposition 9, there exist smooth vector fields $X_1, X_2$ on $S$ such that $X_i$ is $iota$ related to $Y_i$ for $i in [2]$. By Proposition 13, $[X_1, X_2]$ is $iota$-related to $[Y_1, Y_2]$, which is therefore tangent to $S$. #qed

#smallcaps([Lie Algebras on Lie Groups])

Definition. Suppose $G$ is a Lie group. A vector field $X$ on $G$ is said to be left-invariant if it is invariant under all left-transformations. That is, $ forall g,g' in G: d (L_g)_g' (X_g') = X_(g g') $

So for every $g in G$, $X$ is $L_g$-related to itself, and since $L_g$ is smooth and $L_(g^(-1))$ is smooth, $X = \(L_g\)_* X$ as well. Secondly, since $\(L_g\)_*$ is a linear map, the left-invariant smooth vector fields form a subspace of $frak(X)(G)$.

Proposition 15. Let $G$ be a Lie group, and let $X, Y$ be smooth left-invariant vector fields on $G$. Then $[X, Y]$ is also left-invariant.

_Proof_. Let $g in G$. Since $X = \(L_g\)_* (X), Y = \(L_g\)_* (Y)$, $[X, Y] = \(L_g)_*[X, Y]$ by the note following Proposition 13. So $[X, Y]$ is left-invariant.

Definition. A Lie algebra (over $RR$) is a real vector space $frak(g)$ endowed with a bilinear form $[-,-]: frak(g) times frak(g) arrow frak(g)$ that is antisymmetric and satisfies the Jacobi identity. In addition, the Lie algebra of  left-invariant vector fields for $G$ is the Lie algebra of $G$, $"Lie"(G)$.

Lie subalgebras of $frak(g)$ are vector subspaces closed under the Lie bracket.

A Lie algebra homomorphism $A: frak(g) arrow frak(h)$ sends $[X, Y]$ to $[A X, A Y]$.

A Lie algebra is abelian when all Lie brackets evaluate to zero.

Notation. The Lie algebra over $"M"(n, RR)$ is $frak(g l)(n, RR)$.

Proposition 16. Let $G$ be a Lie group. Then the map $epsilon: "Lie"(G) arrow T_e G$ given by $X arrow.bar X_e$ is an isomorphism of vector spaces. Thus when $G$ is a finite-dimensional manifold, $"Lie"(G)$ is finite-dimensional.

_Proof_. First, $epsilon$ is linear over $RR$, since addition and scalar multiplication are linear operations that are respected by vector fields. $epsilon$ is obviously injective, since if $epsilon (X) = 0, X_e = 0$, so $X$ is zero everywhere, as $X$ is left-invariant. To show that $epsilon$ is surjective, let $v in T_e G$ be arbitrary, and let $v^L|_g = d \(L_g)_e (v)$. Now this defines a left-invariant vector field on $G$, and it is the only possible one which satisfies that $epsilon (v^L) = v$.

#import "@preview/physica:0.9.7": evaluated

First, let's check that $v^L$ is smooth. Given $f in C^infinity (G)$, $v^L f$ should be smooth.
 Choose a smooth curve $gamma: (-delta, delta) arrow G$ such that $gamma(0) = e$ and $gamma'(0) =v$. 
 For all $g in G$, $ (v^L f)(g) = v^L|_g\(f) = d(L_g\)_e (v)(f) = v(f compose L_g) = gamma'(0)(f compose L_g) = \ evaluated(frac(d gamma^i, d t))_(t=0) evaluated(frac(partial, partial x^i))_(gamma(0))(f compose L_g) = evaluated(frac(d, d t))_(t=0) (f compose L_g compose gamma)(t). $

 Let $phi: (-delta, delta) times G arrow RR$ by $(t, g) arrow.bar f(g gamma(t))$. Because the component functions are smooth, so is $phi$, so $v^L f$ is smooth because it 
 equals $evaluated(d/(d t))_(t=0) phi(0,g)$ as a function of $g$.

 To see that $v^L$ is left-invariant, we check that $\(L_h)_* (v^L|_g) = v^L|_(h g)$ for all $h, g in G$; that is, $v^L|_(h g) f = (d L_h)_(g) (v^L|_g) f$ for all $f in C^oo (G)$. Now this derivative equals $v^L|_g\(f compose L_h) = v (f compose L_h compose L_g) = v (f compose L_(h g)) = d \(L_(h g))_e (v) f$. So $v^L in "Lie"(G)$, so $epsilon(v^L) = v^L\|_e = d(L_e)_e (v) = v$. #qed

Note. This argument also shows that left-invariant rough vector fields are also smooth, since $v^L$ is the only left-invariant vector field equal to $0$ at $e$.

Corollary 17. Every Lie group admits a left-invariant smooth global frame.

_Proof_. Given a basis for $"Lie"(G)$, it is a left-invariant, smooth, global frame for $G$. By Proposition 16, the values of the basis at $e$ are linearly independent. Since $L_h$ is a diffeomorphism, $d L_h$ is an isomorphism, so bases are preserved. #qed

Proposition 18. The composition of the natural maps $"Lie"("GL"(n, RR)) arrow T_(I_n)"GL"(n, RR) arrow frak(g l)(n, RR)$ gives a Lie algebra isomorphism.

_Sketch of proof_. The matrix entries $X^i_j$ are global coordinates on $"GL"(n, RR) subset frak(g l)(n, RR)$. Then the second natural isomorphism in the statement acts by $ A^(i)_j evaluated(frac(partial, partial X_j))_(I_n) arrow.bar (A^i_j),
 $
 where the Einstein convention is abused for clarity. Let $frak(g) = "Lie"("GL"(n, RR))$. A matrix $A in frak(g l)(n, RR)$ determines a left-invariant vector field $A^L$ of $frak(g)$ by Proposition 16, which behaves by $ A^L|_X = d(L_X)_(I_n) (A) = d(L_X)_(I_n) (A^i_j evaluated(frac(partial, partial X^i_j))_I_n) = A^j_k X^i_j evaluated(frac(partial, partial X^i_k))_X. $ Now given $A, B in frak(g l)(n, RR)$, $[A^L, B^L]$ is given by $ [A^j_k X^i_j evaluated(frac(partial, partial X^i_k))_X, B^p_q X^q_r evaluated(frac(partial, partial X^p_r))_X] = \ A^j_k X^i_j frac(partial, partial X^i_k) (B^p_q X^r_p) frac(partial, partial X^p_r) - B^j_k X^i_j frac(partial, partial X^i_k) (A^j_k X^i_j) frac(partial, partial X^i_k) = \
 (X^i_j A^j_k B^k_r - X^i_j B^j_k A^k_r) frac(partial, partial X^i_r), $

 where one simplifies by noting that the first partial derivative applied to $X^i_j$ will only amount to $1$ if the indices match.
 
 When $X = I_n$, we get $(A^i_k B^k_r - B^i_k A^k_r) evaluated(partial/(partial X^i_r))_(I_n)$, which is essentially $[A, B]$. This left-invariant vector field is determined by its value at the identity, so $[A^L, B^L]=[A,B]^L$.