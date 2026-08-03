import AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseAdmissibleClass

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseFunctionPackage where
  manifold : Type
  topology : TopologicalSpace manifold
  smoothManifold : Prop
  morseFunction : manifold → ℝ
  morseSmooth : Prop
  criticalPointSet : Set manifold
  nondegenerateCriticalPoints : Prop
  morseInequalities : Prop

structure MorseFunctionEvidence (M : MorseFunctionPackage) where
  smoothManifoldClosed : M.smoothManifold
  morseSmoothClosed : M.morseSmooth
  nondegenerateCriticalPointsClosed : M.nondegenerateCriticalPoints
  morseInequalitiesClosed : M.morseInequalities

def MorseFunctionClosed (M : MorseFunctionPackage) : Prop :=
  M.smoothManifold ∧ M.morseSmooth ∧ M.nondegenerateCriticalPoints ∧ M.morseInequalities

theorem morse_function_closed_from_evidence (M : MorseFunctionPackage) (E : MorseFunctionEvidence M) :
    MorseFunctionClosed M := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.morseSmoothClosed
      (And.intro E.nondegenerateCriticalPointsClosed E.morseInequalitiesClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse