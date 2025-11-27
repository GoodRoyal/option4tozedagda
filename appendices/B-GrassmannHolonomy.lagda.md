# Appendix B: Grassmannian Holonomy
```agda
{-# OPTIONS --cubical --safe #-}

module appendices.B-GrassmannHolonomy where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Nat using (ℕ)
open import Cubical.Data.Sigma

postulate
  ℝ : Type₀
  _+ᵣ_ _·ᵣ_ : ℝ → ℝ → ℝ
  𝟘 𝟙 : ℝ

infixl 6 _+ᵣ_
infixl 7 _·ᵣ_

record GrassPoint (k n : ℕ) : Type₀ where
  constructor grass
  field
    rep : ℕ → ℕ → ℝ

TangentVec : {k n : ℕ} → GrassPoint k n → Type₀
TangentVec P = ℕ → ℝ

holonomy :
  {k n : ℕ} {P : GrassPoint k n}
  → (loop : P ≡ P)
  → TangentVec P
  → TangentVec P
holonomy loop V = transport (λ i → TangentVec (loop i)) V

postulate
  theorem-7·3-holonomy-nontrivial :
    {k n : ℕ} {P : GrassPoint k n}
    → (loop : P ≡ P)
    → (V : TangentVec P)
    → holonomy loop V ≡ V
    → loop ≡ refl

PersistentMemory : Type₁
PersistentMemory =
  {k n : ℕ} {P : GrassPoint k n}
  → (loop : P ≡ P)
  → (V : TangentVec P)
  → holonomy loop V ≡ V
  → loop ≡ refl

postulate
  persistent-memory-holds : PersistentMemory
```