# Appendix A: Perpendicular Divergence
```agda
{-# OPTIONS --cubical --safe #-}

module appendices.A-PerpendicularDivergence where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Sigma
open import Cubical.Data.Sum

postulate
  ℝ : Type₀
  _+ᵣ_ _-ᵣ_ _·ᵣ_ _/ᵣ_ : ℝ → ℝ → ℝ
  𝟘 𝟙 ε : ℝ
  expᵣ logᵣ absᵣ : ℝ → ℝ
  _<ᵣ_ _>ᵣ_ : ℝ → ℝ → Type₀

infixl 6 _+ᵣ_ _-ᵣ_
infixl 7 _·ᵣ_ _/ᵣ_

D⦵ : ℝ → ℝ → ℝ
D⦵ kl cosθ = kl ·ᵣ (𝟙 -ᵣ absᵣ cosθ)

Δt : ℝ → ℝ → ℝ → ℝ
Δt Vₛ r H = (Vₛ /ᵣ (r +ᵣ ε)) ·ᵣ expᵣ H

postulate
  theorem-4·1-perpendicular-divergence-zero :
    ∀ (kl cosθ : ℝ)
    → D⦵ kl cosθ ≡ 𝟘
    → (kl ≡ 𝟘) × ((cosθ ≡ 𝟙) ⊎ (cosθ ≡ (𝟘 -ᵣ 𝟙)))

  theorem-4·2-fast-agents-less-influence :
    ∀ (Vₛ r₁ r₂ H : ℝ)
    → r₁ >ᵣ r₂
    → 𝟘 <ᵣ r₂
    → Δt Vₛ r₁ H <ᵣ Δt Vₛ r₂ H
```
