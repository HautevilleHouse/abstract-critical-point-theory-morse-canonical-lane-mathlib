import AbstractCriticalPointTheoryMorseLean.BridgeLemmas

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

def gateClosed (A : MorseAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MorseAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse