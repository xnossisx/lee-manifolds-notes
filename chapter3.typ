#set enum(numbering: "(a)")
#let proof(body) = block(width: 100%, fill: rgb("#FFFFFF"), {
  [_Proof._ ]
  body
  h(1fr)
  sym.wj
  sym.space.nobreak
  $qed$
})


Subject: Derivations, Tangent Spaces

What is a derivation/tangent vector?

In $RR^n$, one use of a tangent vector (that is, an element of $T RR_p^n$ for some $p in RR^n$) is to be put into a _directional derivative_.

This map takes a function $f: C^infinity (RR^n) arrow RR$, $p in RR^n$, and $v in RR^n$ and outputs $(D f)_p dot v$. 
If we fix $v$ and $p$, this map satisfies the Leibniz rule: if $g$ is like $f$, $(D (f g)))_p dot v = f(p) (D g)_p dot v + g(p) (D f)_p dot v$. This motivates our general definition.

Given a smooth manifold $M$, $f,g: C^infinity (M) arrow RR$, and a point $a in M$, a derivation $w$ at $a$ is a linear map $C^infinity (M) arrow RR$ which satisfies the following property:

$ w(f g) = f(a) w(g) + g(a) w(f) $

Such maps form a vector space which we call $T M_a$. Given these same variable declarations, we can also state two properties immediately:

Proposition 1.
+ If $f$ is a constant function, $w (f) = 0$.
+ If $f(a) = g(a) = 0$, $w (f g) = 0$.

#proof([For (a), it suffices to consider $f equiv 1$ because $w$ is linear. Then $w(f) = w(f f) = 2 f(a) w(f) = 2 w(f)$, so $w(f) = 0$. For (b), note that $w(f g) = 0 dot w(g) + 0 dot w(f) = 0.$])

Proposition 2. Take the same variable declarations, and let $M = RR^n$. 
Then for each geometric tangent vector $v in RR^n$, the natural map $phi: v arrow.bar D(-)_p dot v$ is a linear isomorphism.

#proof([We wish to show that this map $phi$ is injective, so look at any $v$ such that $phi(v) = 0$ as a function. When we write $v = v^i e_i$ and set $f = x^i$, $0 = phi(v)(f) = (D x^i)_p dot v = e_i dot v = v^i $. So $v = 0$. To show that $phi$ is surjective, take a derivation $w$ and its "coordinates" $w(x^i)$. We can create another derivation $w' := phi([dots w(x^i) dots])$. To show that these two are equal, note that by Taylor's theorem, we can write any smooth real-valued function $f$ on $RR^n$ by $ f(x) = f(a) + sum_(i=1)^n frac(partial f, partial x^i) (a) (x^i-a^i) + \ sum^n_(i,j=1) (x^j-a^j)(x^i-a^i) integral_0^1 (1-t) frac(partial^2 f, partial x^i partial x^j) (a + t(x-a)) dif t, $ and since $(x^j-a^j)(x^i-a^i)$ is a product of two smooth functions that vanish at $a$, the first and last terms are sent to $0$ by $w$ by Prop. 1. Then the remainder is reduced to $sum^n_(i=1) frac(partial f, partial x^i) (w(x^i) - w(a^i)) = sum^n_(i=1) frac(partial f, partial x^i) w(x^i) = w'(f)$ as desired.])

_Definition_. The derivative of a smooth map $phi: M arrow N$ at $a in M$ is $D phi_a : T M_a arrow T N_(f (a))$

Proposition 3. Let $M, N$ be smooth manifolds with or without boundary, $p in M$, and $v in T M_p$. If $f, g in C^infinity (M)$ agree in some neighborhood of $p$, then $v f = v g$.

#proof([Take $h = f-g$, which is $0$ on some neighborhood of $p$. Now, take another function $psi: M arrow RR$ which is $1$ on $"supp"(h)$ and which has support on $M \\ {p}$. So $psi h = h$, and $psi(p) = h (p) = 0$, so $v (h) = v(psi h) = 0$. ])

Proposition 4. Let $U$ be an open submanifold of the smooth manifold $M$, with $p in U$. Then the map $d iota_p: T U_p arrow T M_p$ is an isomorphism.

_Sketch of proof._ To show the injectivity of the map, assume that for some $v in T U_p$, $d iota_p (v) = 0$. We can find a neighborhood $B$ of $p$ such that $overline(B) subset.eq U$.
 Given $f in C^infinity (U)$, there is some function $tilde(f): M arrow RR$ with $tilde(f)|_B equiv f|_B$. Now $tilde(f)|_U$ and $f$ agree on a neighborhood of $p$, so $v(f) = v(tilde(f)|_U) = v(tilde(f) compose iota) = d iota_p (v)(tilde(f))=0$. So $v$ is the zero derivation. To show surjectivity, given $w in T M_p$, we can find $v in T U_p$ such that $v f = w tilde(f)$, where $tilde(f)$ is any smooth extension of $f$ on $M$ as we described previously. $v$ is well-defined, as $v f$ does not depend on the choice of $tilde(f)$, and as $v$ is a derivation (which follows from the fact that $w$ is one).
 Then given any $g in C^infinity (M)$, we have that $d iota_p (v)(g) = v(g compose iota) = w(tilde(g compose iota)) = w g$, since $g compose iota$, $tilde(g compose iota)$, and $g$ are equal on a neighborhood around $p$.

This isomorphism is canonical. It immediately follows that the dimension of the tangent space is the same as the dimension of the manifold when one proves that diffeomorphisms induce isomorphisms between tangent spaces. We can also show this for manifolds with boundary by using the same extension idea in Proposition 4. We also have nice isomorphisms for tangent spaces of vector spaces and of product manifolds.

Let $gamma: J arrow M$ be a map from an open submanifold of $RR$ to another smooth manifold. We define $gamma' (t_0) := d gamma (d/(d t))_t_0 in T M_(gamma (t_0))$, where $t$ is the one standard coordinate basis vector of $J$. This is termed the velocity of $gamma$ at $t_0$.

Proposition 5. Suppose $M$ is a smooth manifold with or without boundary, and let $p in M$. Then every element of $T M_p$ is the velocity of some smooth curve in $M$.

#proof([Suppose first that $p in "Int"(M)$. Let $(U, phi)$ be a coordinate chart centered at $p$, and write all tangent vector coordinates in terms of the induced basis. Take $v in T M_p$.
 For some sufficiently small $epsilon > 0$, let $gamma: (-epsilon, epsilon) arrow U$ have the coordinate representation $gamma(t) = [...t v^i...]$. We wish to calculate the velocity of $gamma$ at $t=0$. Now, $gamma'(t_0) = frac(d gamma^i, d t)_t_0 frac(d, d x^i)_gamma(t_0) = v^i (d/(d x^i))_gamma(t_0) = v$. Now, suppose that $p in partial M$. To adapt the domain for $gamma$ for the sake of the boundary, we set the domain $(-epsilon, 0]$ if $v^n < 0$ and $[0,epsilon)$ if $v^n > 0$, so that $gamma(t)^n > 0$ always. ])

Proposition 6. Let $F: M arrow N$ be a smooth map, and let $gamma: J arrow M$ be a smooth curve. For any $t_0 in J$, the velocity of the composite curve $F compose gamma$ at $t_0$ is given by $d F (gamma'(t_0))$.

#proof([ We calculate $(F compose gamma)' (t_0) = d(F compose gamma) (frac(d,d t)_(t_0)) = d F compose d gamma (frac(d,d t)_(t_0)) = d F (gamma' (t_0)) $.])

As a consequence, when $gamma(0) = p$ and $gamma' (0) = v$, this proposition makes it very easy to compute $d F_p$.