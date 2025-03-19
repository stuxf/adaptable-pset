#import "/src/lib.typ" as adaptable-pset: *

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#set text(16pt)

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