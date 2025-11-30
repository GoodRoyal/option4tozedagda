# Z-to-Agda : Formal translation from Z specifications to Agda

Translates a subset of the Z notation (ISO/IEC 13568:2002) into executable/checkable Agda code, with the goal of machine-checked refinement from high-level formal specs to dependently-typed implementations.

## Why this exists
- Z is great for specification but has almost no proof automation
- Agda gives full dependent types and proof assistants love it
- This bridge lets industry Z users get Agda-level guarantees

## Current status
- Parses schemas, basic types, predicates
- Translates to Agda data types + refinement proofs
- Tested on the classic "Birthday Book" and "Bank" examples

## Quick start
```bash
git clone [https://github.com/GoodRoyal/option4tozedagda.git
cd option4tozedagda
agda --version   # needs Agda ≥ 2.6.4
agda Everything.agda

https://zenodo.org/records/17729166



