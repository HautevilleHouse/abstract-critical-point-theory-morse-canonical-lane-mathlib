import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.PalaisSmalePackage

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseHomologyPackage (A : AdmissibleClass) where
  chainComplex : Prop
  boundaryOperator : Prop
  homologyGroups : Prop
  homotopyInvariance : Prop
  morseInequalities : Prop

structure MorseHomologyEvidence (A : AdmissibleClass) (H : MorseHomologyPackage A) where
  chainComplexClosed : H.chainComplex
  boundaryOperatorClosed : H.boundaryOperator
  homologyGroupsClosed : H.homologyGroups
  homotopyInvarianceClosed : H.homotopyInvariance
  morseInequalitiesClosed : H.morseInequalities

def MorseHomologyClosed (A : AdmissibleClass) (H : MorseHomologyPackage A) : Prop :=
  H.chainComplex ∧ H.boundaryOperator ∧ H.homologyGroups ∧
  H.homotopyInvariance ∧ H.morseInequalities

theorem morse_homology_closed_from_evidence (A : AdmissibleClass) (H : MorseHomologyPackage A)
    (E : MorseHomologyEvidence A H) : MorseHomologyClosed A H := by
  exact And.intro E.chainComplexClosed
    (And.intro E.boundaryOperatorClosed
      (And.intro E.homologyGroupsClosed
        (And.intro E.homotopyInvarianceClosed E.morseInequalitiesClosed)))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse