{-# OPTIONS --without-K --safe #-}

module option4tozedagda.ZedagdaTypes where

-- Define Zed-specific types here, e.g., for formal verification
record ZedProof (P : Set) : Set where
  field
    axiom : P
    proof : P → P  -- Placeholder for proof obligations
