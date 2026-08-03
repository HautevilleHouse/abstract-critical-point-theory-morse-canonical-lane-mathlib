import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure CriticalPointPackage {M : MorseFunctionPackage} where
  criticalSet : Set M.manifold
  index : M.manifold → ℕ
  levelValue : M.manifold → ℝ
  gradientFlowCrossing : Prop
  morseLemma : Prop

structure CriticalPointEvidence {M : MorseFunctionPackage} (C : CriticalPointPackage M) where
  criticalSetClosed : Prop
  indexClosed : ∀ x ∈ C.criticalSet, C.index x = 0 ∨ C.index x = 1 ∨ C.index x = 2
  levelValueClosed : ∀ x ∈ C.criticalSet, C.levelValue x = M.function x
  gradientFlowCrossingClosed : C.gradientFlowCrossing
  morseLemmaClosed : C.morseLemma

def CriticalPointClosed {M : MorseFunctionPackage} (C : CriticalPointPackage M) : Prop :=
  C.gradientFlowCrossing ∧ C.morseLemma

theorem critical_point_closed_from_evidence {M : MorseFunctionPackage} (C : CriticalPointPackage M) (E : CriticalPointEvidence C) : CriticalPointClosed C := by
  exact And.intro E.gradientFlowCrossingClosed E.morseLemmaClosed

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse