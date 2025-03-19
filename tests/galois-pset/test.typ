#import "/src/lib.typ" as adaptable-pset: *

#let title = "HW5f"
#let author = "Stephen Xu"
#let collaborators = []
#let course-id = "Math 172: Galois Theory"
#let instructor = "Prof. Thonkers"
#let semester = "Spring 2024"
#let due-time = "Jun 14 at 1:00"
#set enum(numbering: "a)")

#show: homework.with(
  title: title,
  author: author,
  collaborators: collaborators,
  course-id: course-id,
  instructor: instructor,
  semester: semester,
  due-time: due-time,
)

#prob(title: "24.1.17")[
  Let $F ⊆ E$ be a ﬁeld extension. Assume that $f, g ∈ F [x]$ are distinct, monic, and irreducible. Show that $f$ and $g$ cannot have a common root in $E$.
]

We know that $f$ and $g$ will not have a common root in $E$ if they are relatively prime to one another in $F$. We know that they are distinct, monic and irreducible. Therefore, it's easy to see that they are relatively prime, so they do not share a common root in $E$. #emoji.heart

#pagebreak()

#prob(title: "24.1.19")[
  Let $F ⊆ E$ with $|E : F| < ∞$. Suppose $f ∈ F [x]$ is irreducible and $deg(f ) = p$, a prime. If $f$ reduces in $E[x]$, show that $p$ divides $|E : F|$.
]

We know that $E$ is a finite degree extension over $F$. Consider $E subset.eq L$, where $L$ includes a root of $f$, $alpha$, such that $alpha in L$. Therefore we have that $|F[alpha]:F| = p$. 

$ |E[alpha]:F| = |E[alpha]:F[alpha]| |F[alpha]:F| $

From this, we can see that $p$ divides $|E[alpha]:F|$

Now, lets consider $g = min_E (alpha)$. $f in E[x]$ and $alpha$ is a root of $f$, so we know that $g divides f$ in $E[x]$. Because $f$ is reducible in $E[x]$, then we have that $deg(g) < deg(f) = p$, so $p divides.not |E[alpha]:E|$. Thus we have

$ |E[alpha]:F| = |E[alpha]:E| |E:F| $

Because $p divides |E[alpha]:F|, p divides.not |E[alpha]:E|$, then we know that $p$ divides $|E:F|$. #emoji.heart
#pagebreak()

#prob(title: "24.2.10")[
  Let $QQ ⊆ E ⊆ CC$. Assume $E$ is the (unique) splitting ﬁeld for $x^p − 2$ over $QQ$ inside $CC$, and assume that $p$ is a prime number. Find $|E : QQ|$.
]

We know that the roots can be written as the real root, $root(p,2)$ as well as a bunch of imaginary roots, $zeta_p root(p,2)$. We thus know that $E = QQ(root(p,2), zeta_p)$. We thus are trying to find $|QQ(zeta_p, root(p,2)):QQ|$.

$ |QQ(zeta_p, root(p,2)):QQ| = |QQ(zeta_p, root(p,2)):QQ(root(p,2))| |QQ(zeta_p):QQ| $

We know that the $p$-th cylcotomic polynomial is the minimal polynomial for $zeta_p$, with degree $p-1$. It's also easy to see that $x^p -2$ is the minimal polynomial for $root(p,2)$ over $QQ$. Therefore we have that 

$ |QQ(zeta_p, root(p,2)):QQ| = p(p-1) $

And we obtain our answer of $|E:QQ| = p(p-1)$. #emoji.heart

#pagebreak()

#prob(title: "24.3.2")[
  Find $G = "Gal"(QQ(sqrt(7), sqrt(11))\/QQ)$. Give a complete argument for all your assertions. Choose a set $S$ of generators for $G$ and let $Omega$ be the set of roots, in $QQ(sqrt(7),sqrt(11))$, of the polynomial $(x^2-7)(x^2-11)$. Draw the Cayley digraph of the action of $G$ on $Omega$.
]

We know that the minimal polynomials for $alpha = sqrt(7), beta = sqrt(11)$ are $x^2-7$ and $x^2-11$ respectively, over both $QQ$, $QQ(sqrt(11))$ or $QQ(sqrt(7))$ respectively. Let us also define $E = QQ(sqrt(7),sqrt(11))$. 

Then we have 

$ |E:QQ| = |E:QQ(sqrt(7))| |QQ(sqrt(7)):QQ| = 2 times 2 = 4 $

Therefore $E$ as a vector space has a basis of $4$ elements over $QQ$. We can therefore write 

$ E = {a + b sqrt(7) + c sqrt(11) + d sqrt(77) | a,b,c,d in QQ} $

We also know $E$ is the splitting field of $(x^2-7)(x^2-11)$ over $QQ$. We also know each element of $"Gal"(E\/QQ)$ is determined by its action on $sqrt(7),sqrt(11)$. 

We know that $x^2-7$ is irreducible in $QQ$, so $"Gal"(QQ(sqrt(7))\/QQ)$ acts transitively on ${sqrt(7),-sqrt(7)}$. Therefore there are two $QQ$-automorphisms of $QQ(sqrt(7))$. One fixes $sqrt(7)$, and the other performs an additive inverse. We can extend these two $QQ$-automorphisms into $QQ[sqrt(7),sqrt(11)]$.

We apply this same process for $x^2-11$. 

We thus have $"Gal"(E\/F) = {e, sigma, tau, sigma tau}$, where the maps are 

$ e: a + b sqrt(7) + c sqrt(11) + d sqrt(77) &|-> a + b sqrt(7) + c sqrt(11) + d sqrt(77)
\ sigma: a + b sqrt(7) + c sqrt(11) + d sqrt(77) &|-> a - b sqrt(7) + c sqrt(11) - d sqrt(77)
\ tau: a + b sqrt(7) + c sqrt(11) + d sqrt(77) &|-> a + b sqrt(7) - c sqrt(11) - d sqrt(77)
\ sigma tau: a + b sqrt(7) + c sqrt(11) + d sqrt(77) &|-> a - b sqrt(7) - c sqrt(11) + d sqrt(77)
\ $

Therefore we obtain that $"Gal"(QQ(sqrt(7),sqrt(11))\/QQ) tilde.equiv ZZ\/2ZZ times ZZ\/2ZZ$. #emoji.heart

#pagebreak()

#prob(title: "24.3.5")[
  Let $F ⊆ E$ be ﬁelds with $|E : F | < ∞$. Assume $E = F [α]$. Show
  $ |"Gal"(E\/F)| <= |E:F| $
]

If $E=F[alpha]$, then every $F$-automorphism is based on what the action of $"Gal"(E\/F)$ does to $alpha$. Therefore, we can define $Omega = {"roots of " min_F (alpha) in E}$. We can define a homomorphism and show that it's one to one, $phi: "Gal"(E\/F) -> Omega$ where $phi(sigma) = phi(alpha)$, and $sigma in E$. 

We have $sigma_1, sigma_2 in E$ such that $phi(sigma_1) = phi(sigma_2)$. We want to show that $sigma_1 = sigma_2$. We know that $sigma_1(alpha) = sigma_2(alpha)$. They both agree on $alpha$, and fix $F$. Therefore they are the same, so $sigma_1 = sigma_2$ and $phi$ is 1-1. Thus,

$ |"Gal"(E\/F)| <= |Omega| <= deg("min"_F (alpha)) = |E:F| $

So we show that $|"Gal"(E\/F)| <= |E:F|$. #emoji.heart

#pagebreak()

#prob(title: "24.3.7")[
  Let $alpha = sqrt(2+sqrt(2)) in CC$.
  1. Compute $f = min_QQ (alpha)$.
  2. Find $E subset.eq CC$ such that $E$ is the splitting field for $f$ over $QQ$. Compute $|E:QQ|$.
  3. Show that $"Gal"(E\/QQ)$ contains an element of order $4$.
]

1. Consider $alpha^2 - sqrt(2) = 2$. Rearranging, we obtain $alpha^2 = 2 + sqrt(2)$. We thus have $alpha^4 = (2 + sqrt(2))^2 => alpha^4 - 4sqrt(2) -6 = 0$. We can rewrite $4sqrt(2)+6$ in terms of $alpha^2$, obtaining $4sqrt(2) +6 = 4alpha^2 -2$. Therefore $alpha^4 -4 alpha^2 +2$. As such we obtain a potential minimal polynomial $x^4 - 4x^2 +2$. Using Eisenstein's, we see it's irreducible and monic with $alpha$ as a root. Therefore $f = x^4-4x^2+2$. 

2. We can find the roots as $plus.minus sqrt(2+sqrt(2)), plus.minus sqrt(2-sqrt(2))$. We note that because they share the same minimal polymial, $|E:QQ| = deg(min_QQ (alpha)) = 4$, and we have that $E = QQ(sqrt(2+sqrt(2)),sqrt(2-sqrt(2)))$. 

3. Consider the automorphism $sigma in "Gal"(E\/QQ)$ such that $phi(alpha) = beta$, where $beta = sqrt(2-sqrt(2))$. Consider

   $ phi(sqrt(2)) = phi(sqrt(alpha beta)) = phi(alpha^2 - 2) = phi(alpha)^2 - phi(2) = beta^2 - 2  = -sqrt(2) $

    Using this, we see that we can use $sigma$ recursively to obtain $beta, alpha, -alpha, -beta$. We thus show that $sigma$ is an element of order $4$ in $"Gal"(E\/QQ)$. #emoji.heart