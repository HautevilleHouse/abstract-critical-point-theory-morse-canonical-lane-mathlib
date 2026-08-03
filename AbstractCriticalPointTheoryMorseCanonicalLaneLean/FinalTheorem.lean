import AbstractCriticalPointTheoryMorseLean.GateLemmas

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

def ConstrainedMorseClosure (A : MorseAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_morse_endgame (A : MorseAdmissibleClass) :
    ConstrainedMorseClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse