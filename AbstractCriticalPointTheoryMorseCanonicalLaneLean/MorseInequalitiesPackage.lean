import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseHomologyPackage

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseInequalitiesPackage (A : AdmissibleClass) where
  weakInequalities : Prop
  strongInequalities : Prop
  bettiNumbersRelation : Prop
  eulerCharacteristicRelation : Prop

structure MorseInequalitiesEvidence (A : AdmissibleClass) (I : MorseInequalitiesPackage A) where
  weakInequalitiesClosed : I.weakInequalities
  strongInequalitiesClosed : I.strongInequalities
  bettiNumbersRelationClosed : I.bettiNumbersRelation
  eulerCharacteristicRelationClosed : I.eulerCharacteristicRelation

def MorseInequalitiesClosed (A : AdmissibleClass) (I : MorseInequalitiesPackage A) : Prop :=
  I.weakInequalities ∧ I.strongInequalities ∧
  I.bettiNumbersRelation ∧ I.eulerCharacteristicRelation

theorem morse_inequalities_closed_from_evidence (A : AdmissibleClass) (I : MorseInequalitiesPackage A)
    (E : MorseInequalitiesEvidence A I) : MorseInequalitiesClosed A I := by
  exact And.intro E.weakInequalitiesClosed
    (And.intro E.strongInequalitiesClosed
      (And.intro E.bettiNumbersRelationClosed E.eulerCharacteristicRelationClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse