import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure CriticalPointsPackage {O : MorseAdmittedObject} (M : MorseFunctionPackage O) where
  indexDefined : Prop
  hessianNondegenerate : Prop
  localBehaviorClassified : Prop
  morseLemmaApplicable : Prop
  indexDefinedClosed : indexDefined
  hessianNondegenerateClosed : hessianNondegenerate
  localBehaviorClassifiedClosed : localBehaviorClassified
  morseLemmaApplicableClosed : morseLemmaApplicable

structure CriticalPointsEvidence {O : MorseAdmittedObject} {M : MorseFunctionPackage O} (C : CriticalPointsPackage M) where
  indexDefinedClosed : C.indexDefined
  hessianNondegenerateClosed : C.hessianNondegenerate
  localBehaviorClassifiedClosed : C.localBehaviorClassified
  morseLemmaApplicableClosed : C.morseLemmaApplicable

def CriticalPointsClosed {O : MorseAdmittedObject} {M : MorseFunctionPackage O} (C : CriticalPointsPackage M) : Prop :=
  C.indexDefined ∧ C.hessianNondegenerate ∧ C.localBehaviorClassified ∧ C.morseLemmaApplicable

theorem critical_points_closed_from_evidence {O : MorseAdmittedObject} {M : MorseFunctionPackage O} (C : CriticalPointsPackage M) (E : CriticalPointsEvidence C) :
    CriticalPointsClosed C := by
  exact And.intro E.indexDefinedClosed (And.intro E.hessianNondegenerateClosed (And.intro E.localBehaviorClassifiedClosed E.morseLemmaApplicableClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse