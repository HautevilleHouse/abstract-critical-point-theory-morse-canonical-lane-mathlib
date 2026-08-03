import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseLemmaPackage (A : AdmissibleClass) where
  nondegenerateCriticalPoints : Prop
  morseLemmaCoordinates : Prop
  gradientLikeVectorField : Prop
  localModelBehavior : Prop

structure MorseLemmaEvidence (A : AdmissibleClass) (M : MorseLemmaPackage A) where
  nondegenerateCriticalPointsClosed : M.nondegenerateCriticalPoints
  morseLemmaCoordinatesClosed : M.morseLemmaCoordinates
  gradientLikeVectorFieldClosed : M.gradientLikeVectorField
  localModelBehaviorClosed : M.localModelBehavior

def MorseLemmaClosed (A : AdmissibleClass) (M : MorseLemmaPackage A) : Prop :=
  M.nondegenerateCriticalPoints ∧ M.morseLemmaCoordinates ∧
  M.gradientLikeVectorField ∧ M.localModelBehavior

theorem morse_lemma_closed_from_evidence (A : AdmissibleClass) (M : MorseLemmaPackage A)
    (E : MorseLemmaEvidence A M) : MorseLemmaClosed A M := by
  exact And.intro E.nondegenerateCriticalPointsClosed
    (And.intro E.morseLemmaCoordinatesClosed
      (And.intro E.gradientLikeVectorFieldClosed E.localModelBehaviorClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse