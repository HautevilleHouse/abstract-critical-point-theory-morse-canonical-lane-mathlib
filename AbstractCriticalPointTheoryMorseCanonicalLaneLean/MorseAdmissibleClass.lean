import AbstractCriticalPointTheoryMorseLean.MorseObject

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure MorseAdmissibleClass where
  object : MorseObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MorseAdmissibleClass) : Prop :=
  MorseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse