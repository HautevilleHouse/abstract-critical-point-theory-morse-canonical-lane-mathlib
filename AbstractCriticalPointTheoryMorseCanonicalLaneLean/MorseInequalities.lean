import AbstractCriticalPointTheoryMorseLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure MorseInequalities {M : MorseFunction} where
  criticalPointCounts : ℕ → ℕ  -- number of critical points of index i
  bettiNumbers : ℕ → ℕ
  inequalityHolds : Prop

def MorseInequalitiesClosed {M : MorseFunction} (I : MorseInequalities M) : Prop :=
  I.inequalityHolds

theorem morse_inequalities_closed_from_evidence {M : MorseFunction} (I : MorseInequalities M) (h : I.inequalityHolds) :
    MorseInequalitiesClosed I := by
  exact h

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse