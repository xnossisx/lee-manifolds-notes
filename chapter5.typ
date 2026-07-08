Relevant definitions from chapter 4:

- A smooth immersion is a smooth map $F$ between smooth manifolds $M$, $N$ such that $d F_p$ is injective for all $p in M$.
- A smooth embedding is a smooth immersion $F: M arrow N$ which is a "topological embedding": i.e. it is a homeomorphism from $M$ to $F(M) subset.eq N$, where the image is given the subspace topology.

Suppose $M$ is a smooth manifold with or without boundary. Subsets $S subset.eq M$ are embedded submanifolds when they are manifolds in the subspace topology and have a smooth structure such that the inclusion map is a smooth embedding.

In this context, $dim M - dim S$ is the codimension of $S$ in $M$, and $M$ is the ambient manifold for $S$. In addition, if $S$ has codimension $1$, $S$ is referred to as an embedded hypersurface.

Also, $S subset.eq M$ is properly embedded if the inclusion map is proper; that is, inverse images of compact sets under the map are compact.

Proposition 1. Suppose $M$ is a smooth manifold. Then $M$'s submanifolds of codimension $0$ are its open submanifolds.

#let proof(body) = block(width: 100%, fill: rgb("#FFFFFF"), {
  [_Proof._ ]
  body
  h(1fr)
  sym.wj
  sym.space.nobreak
  $qed$
})

#proof([$(arrow.double.l)$ Let $U subset.eq M$ be some open submanifold with inclusion map $iota: U arrow.hook M$. $U$ is a smooth manifold with the same dimension as $M$, since any chart of $M$ will take open sets to open sets. So $U$ has codimension $0$. In addition, $iota$'s coordinates are that of the identity map if $U$ is given the smooth structure derived from that of $M$, so $iota$ is a smooth immersion. Since $U$ has the subspace topology, $iota$ is also a smooth embedding.

 $(arrow.double)$ Let $U$ be a codimension-0 embedded submanifold of $M$. Then the inclusion map is definitionally a smooth embedding, which makes it a local diffeomorphism (proved in the last chapter) and an open map as well. So $U$ is an open subset of $M$.])

Proposition 2. Suppose $M$ is a smooth manifold, $N$ is a boundaryless smooth manifold, and $F: N arrow M$ is a smooth embedding. Then $S=F(N)$ is a topological manifold with a unique smooth structure making it an embedded submanifold of $M$. In addition, $F$ is a diffeomorphism onto $S$.

#proof([Given the subspace topology on $S$, $F$ being an embedding is equivalent to $F$ being a homeomorphism from $N$ onto $S$. In this case, $S$ is a topological manifold, where the charts can be given the form $(F(U), phi compose F^(-1))$ for each chart $(U, phi)$ of $N$. Because $N$ is a smooth manifold, these charts are also smoothly compatible. Now $F$ is a smooth immersion, so $F$ is a diffeomorphism between $S$ and $N$, and this smooth structure is unique in having this property (the reason why is not clear to me). The inclusion map of $S$ equals $F^(-1) compose F$, and since $F$ is a smooth embedding from $N$ to $M$ and $F^(-1)$ is a diffeomorphism, the inclusion map is a smooth embedding.])

Definition. If $M$ and $N$ are both smooth manifolds, $M times {p}$ (where $p in N$) is a slice of the product manifold of $M times N$. Note that this is a smooth submanifold of $M times N$.

Proposition 3. An embedded submanifold of a smooth manifold $M$ is properly embedded iff it is closed (or compact, since $M$ is Hausdorff) in $M$.

Definition. If $U$ is an open subset of $RR^n$ and $k in {0} union [n]$, a $k$-dimensional slice of $U$ is a subset of the form $ S = {(x^1,..,x^k) times c}, c in RR^(n-k). $
Such a space is homeomorphic to $RR^k$.

Definition. Let $M$ be a smooth $n$-manifold, and let $(U, phi)$ be a smooth chart on $M$. If $S subset.eq U$ and $phi(S)$ is a $k$-slice of $phi(U)$, then $S$ is a $k$-slice of $U$. If $S subset.eq M$ is such that for each chart $(U, phi)$, $U inter S eq.not emptyset$ implies that $phi(U inter S)$ is a $k$-slice of $U$, then $S$ is said to satisfy the local $k$-slice condition. The involved charts are called slice charts for $S$ in $M$, and the coordinates corresponding to each of the slice charts are called slice coordinates.

Proposition 4. Let $M$ be a smooth $n$-manifold. If $S subset.eq M$ is an embedded $k$-dimensional submanifold, then the local $k$-slice condition holds for $S$. If $S subset.eq M$ satisfies the local $k$-slice condition, then when given the subspace topology, $S$ is a topological manifold of dimension $k$, and it has a smooth structure making it into a $k$-dimensional embedded submanifold of $M$.

#let qed = {h(1fr); sym.wj; sym.space.nobreak; $qed$}

_Proof_. $(=>)$ Since the inclusion map is an immersion, for each $p in S$, we can use the rank theorem to represent the coordinates of the
 inclusion map $iota: S arrow M$ as $ (x^1,...,x^k) arrow.bar (x^1,...,x^k, 0,...,0) $ within the chart $(U, phi)$ for $S$ and $(V, psi)$ for $M$, both centered at $p$. Then, choose coordinate balls $U_0, V_0$ of sufficiently small size (size $epsilon$) that fit in $U$ and $V$, respectively and are centered at $p$. Then $iota(U_0)$ is a slice in $V_0$. Since $U_0$ is open in $S$, there is an open $W subset.eq M$ such that $U_0 = W inter S$. Then $(V_0, psi)$ can be restricted to $V_1 = V_0 inter W$ so that $V_1 inter S = U_0$. Then $U_0$ is a slice of $V_1$.
 
 ($arrow.double.l$) We know that $S$ is second-countable and Hausdorff because both properties are local conditions, which are inherited by subspaces. To make $S$ a topological manifold, we can construct an atlas by taking the slice coordinates of $S$ for each chart and then restricting to $RR^k$. That is, if we take $pi: RR^n arrow RR^k$ to be the standard projection, the slice chart $(U, phi)$ is sent to $(U inter S, pi compose phi|_(U inter S))$. The image of this chart is the intersection of a $k$-slice in $RR^n$ and $phi(U)$, so $(pi compose phi|_(U inter S))(V)$ is open. Furthermore, the chart map has a continuous inverse given by $phi^(-1) compose j$, where $j$ is the embedding of $RR^k$ onto the $k$-slice. So $S$ is a topological manifold. Since the transition maps for $S$ look like $pi compose phi compose psi^(-1) compose j$, the charts on $S$ are smoothly compatible. The charts also cover all of $S$, so they define a unique smooth structure on $S$. Now the inclusion map has a coordinate representation of the form $ (x^1,...,x^k) arrow.bar (x^1,...,x^k) times c $ for the slice charts in $M$ and corresponding charts in $S$, so the map is a smooth immersion. We defined $S$ so that the inclusion map is an embedding, so $S$ is an embedded submanifold.   #qed

Proposition 5. If $M$ is a smooth $n$-manifold with boundary, then the subspace topology on $partial M$ creates a topological $(n-1)$-dimension manifold without boundary. This manifold has a smooth structure that makes it a properly embedded submanifold of $M$.

Proposition 6. Let $M, N$ be smooth manifolds, and let $Phi: M arrow N$ be a smooth map with constant rank $r$. Each level set is then a properly embedded submanifold of codimension $r$ in $M$.

_Proof_. Define $m:=dim M, n:= dim N, k := m-r$. Take  $c in N$ and define $S:=Phi^(-1) (c) subset.eq M$. Let $p in S$. By the rank theorem, there are smooth charts $(U, phi), (V, psi)$ centered at $p$ and $c$ so that $Phi$ has a neat coordinate representation. Then $S inter U$ is the slice whose first $r$ local coordinates are $0$. So $S$ satisfies the local $k$-slice condition, and it is an embedded submanifold. By continuity, $S$ is closed in $M$, so it is properly embedded by Proposition 3. #qed

If $Phi$ is also a smooth submersion, then its rank is constant and equal to the dimension of the codomain, so all of its level sets have codimension equal to the dimension of $N$.

Definition. If $Phi: M arrow N$ is smooth, a point $p in M$ is regular if $d Phi_p$ is surjective, and in this case, $Phi(p)$ is a critical value. If $p$ is not regular, then it is critical. $Phi^(-1) (c)$ is a regular level set if $c$ is a regular value of $Phi$ as well.

Proposition 7. Every regular level set of a smooth map is a properly embedded submanifold whose codimension equals the dimension of the codomain.

_Proof_. Let $Phi: M arrow N$ be a smooth map and let $c in N$ be regular. The set $U$ of points $p in M$ where $"rank" d Phi_p = dim N$ is open in $M$ and contains $Phi^(-1) (c)$, since $c$ is regular. So $U$ is an open submanifold and $Phi|_U: U arrow N$ is a smooth submersion. Then Proposition 6 implies that $Phi^(-1) (c)$ is an embedded submanifold of $U$. Now, the composition of the inclusion maps $Phi^(-1) (c) arrow.hook U arrow.hook M$ is a composition of smooth embeddings, so $Phi^(-1) (c)$ is smoothly embedded in $M$ by the chain rule on derivatives, and it is closed by continuity and the Hausdorff nature of $M$ and its subsets. #qed

Proposition 8. Let $S subset.eq M$, where $M$ is a smooth $m$-manifold. Then $S$ is an embedded $k$-submanifold of $M$ iff each $p in S$ has an open neighborhood in $M$ such that $U inter S$ is a level set of a smooth submersion $Phi: U arrow RR^(m-k)$.

_Proof_. $(=>)$ If $(x^1,...,x^m)$ are slice coordinates for $S$ on an open $U subset.eq M$, the map $Phi: U arrow RR^(m-k)$ given in coordinates by $Phi(x) = (x^(k+1),...,x^m)$ maps $S inter U$ to $0$ and is a smooth submersion.

$(arrow.double.l)$ Suppose that for each $p in S$ one of its neighborhoods $U$ has a submersion $Phi: U arrow RR^(m-k)$ for which $S inter U$ is a level set. By Proposition 6, $S inter U$ is an embedded submanifold of $U$, so by Proposition 4, it also satisfies the local slice condition. Applying Proposition 4 to $S$ and $M$, we conclude that $S$ is an embedded submanifold of $M$. #qed

This result guarantees the existence of a local defining map which is a submersion. A defining map for $S$ is a map $Phi: M arrow N$ such that $S$ is a regular level set of $Phi$.

Definition. An immersed submanifold $S$ is a subset of a smooth manifold $M$, such that $S$ can be given a structure which makes it a topological manifold without boundary and which provides a smooth structure such that the inclusion map $S arrow.hook M$ is a smooth immersion.

Clearly, embedded submanifolds are also immersed. From now on, we may refer to immersed submanifolds by smooth submanifolds.

Proposition 9. Suppose $M$ is a smooth manifold with or without boundary, $N$ is a smooth manifold, and $F: N arrow M$ is an injective smooth immersion. Then $S := F(N)$ has a unique topology and smooth structure such that it is a smooth submanifold of $M$ and such that $F: N arrow S$ is a diffeomorphism onto its image.

_Proof_. We use Proposition 2 to fill in most of the details. We generate the topology of $S$ by declaring a set $U$ to be open iff $F^(-1) (U)$ is open in $N$, and then we define the charts to be of the form $(F(U), phi compose F^(-1))$, where $(U, phi)$ is a chart for $N$. This setup is the unique way which ensures that $F$ is a diffeomorphism onto $S$, and the composition of $F^(-1)$ and $F$ is now a smooth immersion from $S$ to $M$. #qed

Proposition 10. Suppose $M$ is a smooth manifold, and $S subset.eq M$ is an immersed submanifold. If any of the following holds, then $S$ is embedded.
#set enum(numbering: "(a)")
+ $S$ has codimension 0 in $M$.
+ The inclusion map $S subset.eq M$ is proper.
+ $S$ is compact.

_Proof_. Let $iota$ be the inclusion map. We just need to show in each case that $iota$ is a homeomorphism, given that it is continuous. For (a), we know from Proposition 1 that $S$ is an open submanifold, so for all $p in S$, $T_p S tilde.equiv T_p M$. Since the derivative of $iota$ is the identity map, this map is a bijective (on its image) local diffeomorphism, so $iota$ is a homeomorphism. For (b), in the appendix, we showed that continuous and proper maps are closed. Since $iota$ is a bijection, this implies that $iota$ is open, hence a homeomorphism. For (c), note that since $iota$ is continuous, $iota (S)=S$, and every closed subset of $S$ is sent to a compact (and closed, since $M$ is Hausdorff) set. Since $iota$ is bijective, this means that $iota$ is open as well, so it is a homeomorphism. #qed

Proposition 11. If $M$ is a smooth manifold, and $S subset.eq M$ is an immersed submanifold, then for each $p in S$ there exists a neighborhood of $p$ in $S$ that is an embedded submanifold of $M$.

_Proof_. A theorem from chapter 4 shows that each $p in S$ has a neighborhood $U subset.eq S$ such that $iota|_U$ is an embedding, since $iota$ is an immersion. Alternatively, since $iota$ is injective and we can find a basis of precompact open balls for $S$, one can just use the closed map lemma. #qed

Definition. Suppose that $S subset.eq M$ is an immersed $k$-dimensional submanifold. A local parameterization of $S$ is a continuous map $X: U arrow M$ whose domain is an open subset $U subset.eq RR^k$, whose image is an open subset of $S$, and is a homeomorphism onto its image based on the topology of $S$. This parameterization is global if the image of $X$ is all of $S$ and smooth if it is a diffeomorphism onto its image, with respect to $S$'s structure.

Proposition 12. Suppose $M$ is a smooth manifold, $S subset.eq M$ is an immersed $k$-submanifold, $iota$ is the inclusion map, and $U subset.eq RR^k$ is open. A map $X: U arrow M$ is a smooth local parameterization of $S$ iff there is a smooth coordinate chart $(V, phi)$ for $S$ such that $X = iota compose phi^(-1)$. Therefore, every point of $S$ is in the image of some local parametrization.

Proposition 13. If $F: M arrow N$ is a smooth map between smooth manifolds with or without boundary, and $S subset.eq M$ is an immersed submanifold, then $F|_S: S arrow N$ is smooth.

_Proof_. By the definition of an immersed submanifold, the inclusion map is a smooth immersion. The result follows because $F|_S = F compose iota$. #qed

Proposition 14. Suppose $M$ is a boundaryless smooth manifold, $S subset.eq M$ is an immersed submanifold, and $F: N arrow M$ is a smooth map whose image is contained in $S$. If $F$ is continuous as a map from $N$ to $S$ with respect to the topology of $S$, then $F: N arrow S$ is smooth.

_Proof_. Take $p in N$ and let $q = F(p) in S$. By Proposition 11, thee is a neighborhood $V$ of $q$ in $S$ such that $iota_V$ is a smooth embedding. Then there is a smooth chart $(W, psi)$ for $M$ that is a slice chart for $V$ in $M$ centered at $q$. Then $(W inter V, pi compose psi) = (V_0, tilde(psi))$ is a smooth chart for $V$, where $pi: RR^n arrow RR^(dim S)$ is the projection to the first $dim S$ coordinates, as $V_0 = (iota|_V)^(-1) (W)$ is open in $V$ and hence also $S$. Let $U = F^(-1) (V_0)$, which is an open subset of $N$ containing $p$. Choosing a smooth chart $(U_0, phi)$ for $N$ centered at $p$ and contained within $U$, we get a coordinate representation of $F$ which equals $ tilde(psi) compose F compose phi^(-1) = pi compose psi compose F compose phi^(-1) $ which is smooth because $F$ as a map into $M$ is smooth.

Note. If $S$ were embedded, the continuity of $F$ into $S$ is obvious, since $S$ inherits the subspace topology of $M$.

Definition. If $M$ is a smooth manifold and $S subset.eq M$ is an immersed submanifold, $S$ is said to be weakly embedded in $M$ if every smooth map $F: N arrow M$ whose image lies in $S$ is smooth as a map from $N$ to $S$. These manifolds are also refered to as initial submanifolds.

Proposition 15. Suppose that $S$ is an embedded submanifold of the smooth manifold $M$. The subspace topology on $S$ and the smooth structure described in Proposition 2 are the only combined structure which makes $S$ a smooth submanifold.

_Proof_. Suppose $S subset.eq M$ is an embedded $k$-dimensional submanifold. Proposition 4 shows that $S$ satisfies the local $k$-slice condition and that $S$ is an embedded submanifold with the subspace topology and the smooth structure given by Proposition 4. Now, suppose that there were some other topology and smooth structure on $S$, which is denoted $tilde(S)$. Its inclusion map $tilde(iota) : tilde(S) arrow.hook M$ is also an injective immersion. Proposition 14 implies that the map $tilde(iota)': tilde(S) arrow S$ is a smooth map, so for each $p in tilde(S)$, the differential $d tilde(iota)_p: T_p tilde(S) arrow T_p M$ is equal to $d iota_p compose d tilde(iota)'_p$, where $iota: S arrow.hook M$ is just another inclusion. This composition is injective, so $d tilde(iota)'_p$ is injective and $tilde(iota)'$ is an immersion. Since $tilde(iota)'$ is a bijection, the global rank theorem implies that it is a diffeomorphism, so $S$'s overall structure is unique up to diffeomorphism. #qed

There is not as much we can show about immersed submanifolds, but we can show that a topology on an immersed submanifold induces a unique smooth structure on it. However, weakly embedded submanifolds have a unique endowment of topology and smooth structure.

Also, smooth functions on smooth submanifolds can be extended to an open neighborhood containing the submanifold, which includes the entire manifold when the submanifold is properly embedded (that is, the inclusion map is proper).

The derivative of the inclusion map from a smooth submanifold acts as follows: for any $p in S$ and $v in T_p S$, the converted vector $tilde(v)$ takes smooth functions on $M$ to $tilde(v) f = d iota_p (v) = v (f compose iota) = v (f|_S)$.

Proposition 16. Suppose $M$ is a smooth manifold w/ or w/out boundary, $S subset.eq M$ is a smooth submanifold, and $p in S$. Then $v in T_p M$ is in $T_p S$ iff there is a smooth curve $gamma: J arrow M$ whose image is cont. in $S$, and which is also smooth with respect to $S$'s structure, such that $0 in J$, $gamma(0) = p$, and $gamma'(0)=v$.

_Proof_. $(arrow.double)$ In this case, we can use Proposition 5 from Chapter 3 to identify such a smooth curve in $S$. By Proposition 6 from Chapter 3, the velocity vector in $T_p S$ (wrt $S$'s structure) is sent by $d iota$ to $T_p M$, so the velocity vector stays in $T_p S$.

$(arrow.double.l)$ Let there be such a $gamma$. Then $gamma'(0) in T_p S$, and this is sent by $d iota_p$ to $T_p S$.   #qed

Proposition 17. Suppose $M$ is a smooth manifold, $S subset.eq M$ is an embedded submanifold, and $p in S$. Then $T_p S$ is equal to $ {v in T_p M : f in C^infinity (M) and f|_S = 0 arrow.double v f = 0} $

_Proof_. Suppose first that $v in T_p S subset.eq T_p M$. Then $v = d iota_p (w)$ for some $w in T_p S$ (the "real" tangent space). If $f in C^infinity (M)$ vanishes on $S$, $f compose iota = 0$, so $v f = d iota_p (w) f = w (f compose iota) = 0$.

Suppose now that $v in T_p M$ satisfies $v f = 0$ whenever $f|_S = 0$. We want to find $w$ as before. Take slice coordinates $(x^1,...,x^n)$ for $S$ in a neighborhood $U$ of $p$. Now we know that $ iota (x^1,...,x^k) = (x^1,...,x^k,0,...,0) $
 in the slice coordinates, so $T_p S$ is $"Span"_RR {partial/(partial x ^1)|_p,...,partial/(partial x^k)|_p}$ in $T_p M$. So our coordinate representation of $v$ is such that $v^i = 0$ if $i >k$ if $v in T_p S$.

 Take $phi$ to be a smooth bump function supported in $U$ and equal to $1$ in a neighborhood of $p$. Given $j > k$, consider $f(x) = phi(x) x^j$, extended to $0$ outside of $"supp" phi$. Now $f$ vanishes on $S$, so $ 0 = v f = sum^n_(i=1) v^i frac(partial (phi (x) x^j), partial x^i)(p) = v^j $ as desired. #qed

Proposition 18. Suppose $M$ is a smooth manifold and $S subset.eq M$ is an embedded submanifold. If $Phi: U arrow N$ is any local defining map for $S$, then $T_p S = ker d Phi_p$ for each $p in S inter U$.

_Proof_. $Phi compose iota$ is constant on $S inter U$, where $iota$ is the expected inclusion. So $d Phi_p compose d iota_p$ is a zero map from $T_p S$ to $T_(Phi (p)) N$. That is, $T_p S=im d iota_p subset.eq ker d Phi_p$. Now $Phi$ is a submersion, so $d Phi_p$ is surjective and $dim ker d Phi_p = dim T_p M - dim T_(Phi(p)) N $, which equals the dimension of $T_p S$ by Proposition 6. This also equals $dim im d iota_p$, so $im d iota_p = ker d Phi_p$. #qed

Corollary. When $S subset.eq M$ is a level set of a smooth submersion $(Phi^i): M arrow RR^k$, each vector $v in T_p M$ is tangent to $S$ (that is, is in $T_p S$) iff $forall i in [k]: v Phi^i = 0$.

Tangent vectors at the boundary but not in $T_p partial M$ can be classified by the domains of smooth curves whose velocities at $0$ are the given vector. So, in particular, if the domain is contained within $RR_(>=0)$, the vector is inward-pointing; else, it is outward-pointing.

Proposition 19. Suppose $M$ is a smooth n-manifold with boundary, $p in partial M$, and $(x^i)$ are smooth boundary coordinates for a neighborhood of $p$. The inward-pointing vectors are exactly those with positive $x^n$-component, the outward pointing ones are those with negative $x^n$ component, and the ones tangent to $partial M$ are those with zero $x^n$ component.

_Proof_. Let $gamma: [0, epsilon) arrow M$ be a smooth curve with $gamma(0)=p$ and $gamma'(0) =v$, with $v$ being an inward-pointing vector. Then $v = d gamma_0 (d/(d t)|_0)$, which has the coordinate representation $partial/(partial x^i)|_p frac(d gamma^i, d t)$. In local coordinates (when the local coordinate chart $(U, phi)$ is centered at $p$), this tangent vector indicates that $phi(gamma(t)) = 0 + t x^i frac(d (phi compose gamma)^i, d t) + k(t)$, where $t dot norm(k(t)) arrow 0$ as $t arrow 0$. In the $n$th local coordinate, we have that $phi(gamma(t))^n = frac(d (phi compose gamma)^n, d t) t + k^n (t)$, and $t dot k^n (t) arrow 0$ as $t arrow 0$. If the derivative were negative, then for $epsilon < frac(d (phi compose gamma)^n, d t)$ and its corresponding $delta$ with regards to $k^n$ and $0$, if $0< t<delta$, $abs(phi(gamma(t))^n - frac(d (phi compose gamma)^n, d t) t) < frac(d (phi compose gamma)^n, d t) $, so $phi(gamma(t))^n$ cannot be non-negative in this interval. But $phi^n (gamma(t))>=0$; contradiction. The rest of the proof proceeds in this way. #qed

If $M$ is a smooth manifold with boundary, a boundary defining function for $M$ is a smooth $f: M arrow [0, infinity)$ such that $f^(-1) (0) = partial M$ and $d f_p eq.not 0$ for all $p in partial M$.

Proposition 20. Every smooth manifold with boundary admits a boundary defining function.

_Proof_. Take a smooth chart cover ${(U_alpha, phi_alpha}$ of $M$. For each $alpha$, let $f_alpha = U_alpha arrow [0,infinity)$ be a smooth function which satisfies the following: 
- if $U_alpha$ is an interior chart, $f_alpha equiv 1$;
- else, $U_alpha$ is a boundary chart, and $f_alpha (x^1,...,x^n) = x^n$.

So $f_alpha (p)$ is positive iff $p in.not partial M$. Take a partition of unity subordinate to the ${U_alpha}$ and take $f = sum_alpha psi_alpha f_alpha$. Now $f$ satisfies the local properties of the $f_alpha$. Now, suppose that $p in partial M$ and $v$ is inward-pointing at $p$. If $p in U_alpha$ for some $alpha$, $f_alpha (p) = 0$ and $d f_alpha|_p (v) = d x^n|_p (v) > 0$ by Proposition 19. So $d f_p (v) = sum_alpha (f_alpha (p) d psi_alpha|_(p)(v)+ psi_alpha (p) d f_alpha|_(p)(v) ))$. The first term vanishes for each $alpha$, and the second is non-zero. Indeed, there is at least one $alpha$ such that $psi_alpha (p) > 0$. So the sum is not zero. #qed

We can define submanifolds with boundary without much difficulty.

A regular domain in $M$ is a properly embedded codimension-0 submanifold with boundary.

Proposition 21. Suppose $M$ is a smooth manifold without boundary, and $D subset.eq M$ is a regular domain. Then the interior and boundary of $D$ is independent of topological structure added.

_Proof_. Take $p in D$. If $p$ is in the manifold boundary of $D$, a theorem from chapter 4 shows that there is a boundary chart $(U, phi)$ for $D$ and a chart $(V, psi)$ for $M$ centered at $p$ in which the inclusion $F: D arrow.hook M$ has the coordinate representation $F(x^1,...,x^m) = (x^1,...,x^m)$, where $m=dim M = dim D$. Since $D$ is embedded, $U = D inter W$ for some open $W subset.eq M$, so $V_0 = V inter W$ is a neighborhood of $p$ in $M$ such that $V_0 inter D$ consists of the points in $V_0$ with non-negative $x^m$ coordinate. So every neighborhood of $p$ intersects both $D$ and $M\\D$, and $p$ is in the topological boundary of $D$.

On the other hand, if $p$ is in the manifold interior of $D$, $p$ is contained in an smooth embedded codimension-0 boundaryless submanifold of $M$, which is open and contained in $D$ by Proposition 1. So $p$ is in the topological interior of $D$. Since being in the interior or being on the boundary are complementary notions, this suffices for the proof. #qed

Proposition 22. Let $M$ be a smooth manifold, $f in C^infinity (M)$.

+ For each regular value $b$ of $f$, $f^(-1) ((-infinity, b))$ is a regular domain in $M$.
+ If $a < b$ are two regular values of $f$, then $f^(-1) ([a,b])$ is a regular domain in $M$.

Sets mentioned in Proposition 22.(a) are called regular sublevel sets of $f$. If $D subset.eq M$ is a regular domain and $D$ is a regular sublevel set of $f$, $f$ is called a defining function for $D$.

Proposition 23. If $D subset.eq M$ is a regular domain, then there exists a defining function for $D$. If $D$ is compact, then $f$ can be a smooth exhaustion function for $M$.

Proposition 24. Let $M$ be a smooth manifold w/ or w/out boundary.
+ Open subsets of $M$ are embedded codimension-0 submanifolds w/ or w/out boundary.
+ If $N$ is a smooth manifold and $F: N arrow M$ is a smooth embedding, then $F(N)$, given the subspace topology, is a topological manifold with boundary, and it has a smooth structure making it into an embedded submanifold with boundary in $M$.
+ An embedded submanifold with boundary in $M$ is properly embedded iff it is closed.
+ If $S subset.eq M$ is an immersed submanifold with boundary, then for each $p in S$ there is exists a neighborhood $U$ of $p$ in $S$ that is embedded in $M$.

We can also define a $k$-dimensional half-slice as a subset of a chart domain whose local coordinates satisfy $x^k >=0$ and is a subset of a standard $k$-slice. Then the local $k$-slice condition for submanifolds with boundaries allows for points to be contained in $k$-dimensional half-slices. Indeed, an analogue of Proposition 4 holds for these submanifolds.

Proposition 25. Let $M$, $N$ be smooth manifolds with boundary, and let $S subset.eq M$ be an embedded submanifold with boundary.

+ If $F: M arrow N$ is smooth, so is $F|_S$.
+ If $partial M eq emptyset$ and $F: N arrow M$ is smooth and $F(N) subset.eq S$, then $F$ is smooth as a map from $N$ to $S$.