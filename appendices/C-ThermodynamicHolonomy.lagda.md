# Appendix C: Thermodynamic Holonomy
```agda
{-# OPTIONS --cubical --safe #-}

module appendices.C-ThermodynamicHolonomy where

open import Cubical.Foundations.Prelude
open import Cubical.Data.Sigma
open import Cubical.Data.Empty as ⊥

postulate
  ℝ : Type₀
  _+ᵣ_ _-ᵣ_ _·ᵣ_ _/ᵣ_ : ℝ → ℝ → ℝ
  𝟘 : ℝ
  _<ᵣ_ _≤ᵣ_ : ℝ → ℝ → Type₀

infixl 6 _+ᵣ_ _-ᵣ_
infixl 7 _·ᵣ_ _/ᵣ_
infix  4 _<ᵣ_ _≤ᵣ_

record Holonomy : Type₀ where
  constructor mkH
  field
    S-cont     : ℝ
    S-disc     : ℝ
    Φ-boundary : ℝ

open Holonomy public

ℋ : Holonomy → ℝ
ℋ h = (S-cont h +ᵣ S-disc h) +ᵣ Φ-boundary h

SecondLaw : Holonomy → Holonomy → ℝ → Type₀
SecondLaw h₁ h₂ dt = 𝟘 <ᵣ dt → 𝟘 ≤ᵣ ((ℋ h₂ -ᵣ ℋ h₁) /ᵣ dt)

postulate
  theorem-9·2-second-law :
    ∀ (h₁ h₂ : Holonomy) (dt : ℝ)
    → SecondLaw h₁ h₂ dt

Violation : Holonomy → Holonomy → ℝ → Type₀
Violation h₁ h₂ dt = (𝟘 <ᵣ dt) × (((ℋ h₂ -ᵣ ℋ h₁) /ᵣ dt) <ᵣ 𝟘)

postulate
  violation-implies-contradiction :
    ∀ (h₁ h₂ : Holonomy) (dt : ℝ)
    → Violation h₁ h₂ dt
    → ⊥
```