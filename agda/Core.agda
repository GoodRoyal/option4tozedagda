{-# OPTIONS --without-K --safe #-}

module option4tozedagda.Core where

-- Placeholder for core Option 4 constructs translated to Agda
data ZedType : Set₁ where
  Base : Set → ZedType
  Func : ZedType → ZedType → ZedType

-- Example function or proof
id : {A : Set} → A → A
id x = x
