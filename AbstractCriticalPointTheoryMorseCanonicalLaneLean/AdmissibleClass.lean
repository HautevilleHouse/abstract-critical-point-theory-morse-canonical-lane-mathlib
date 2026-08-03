import AbstractCriticalPointTheoryMorseCanonicalLaneLean.TheoremStatement
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MorseFunction (M : MorseSpace) where
  f : M.carrier → ℝ
  smooth : Prop
  proper : Prop

structure MorseAdmittedObject where
  space : MorseSpace
  morseFunction : MorseFunction space
  criticalPoints : Set space.carrier
  morseIndexAssigned : Prop
  conclusion : morseIndexAssigned

structure AdmissibleClass where
  object : MorseAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MorseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse