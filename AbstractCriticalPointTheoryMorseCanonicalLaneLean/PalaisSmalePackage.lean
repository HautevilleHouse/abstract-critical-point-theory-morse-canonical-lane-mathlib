import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseLemmaPackage

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure PalaisSmalePackage (A : AdmissibleClass) where
  compactnessCondition : Prop
  boundedGradientImpliesSubconvergence : Prop
  criticalPointExistence : Prop
  energyBounds : Prop

structure PalaisSmaleEvidence (A : AdmissibleClass) (P : PalaisSmalePackage A) where
  compactnessConditionClosed : P.compactnessCondition
  boundedGradientImpliesSubconvergenceClosed : P.boundedGradientImpliesSubconvergence
  criticalPointExistenceClosed : P.criticalPointExistence
  energyBoundsClosed : P.energyBounds

def PalaisSmaleClosed (A : AdmissibleClass) (P : PalaisSmalePackage A) : Prop :=
  P.compactnessCondition ∧ P.boundedGradientImpliesSubconvergence ∧
  P.criticalPointExistence ∧ P.energyBounds

theorem palais_smale_closed_from_evidence (A : AdmissibleClass) (P : PalaisSmalePackage A)
    (E : PalaisSmaleEvidence A P) : PalaisSmaleClosed A P := by
  exact And.intro E.compactnessConditionClosed
    (And.intro E.boundedGradientImpliesSubconvergenceClosed
      (And.intro E.criticalPointExistenceClosed E.energyBoundsClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse