import AbstractCriticalPointTheoryMorseLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure PalaisSmaleCondition {M : MorseFunction} where
  boundedSequence : (ℕ → M.Point)
  gradientTendsToZero : Prop
  convergentSubsequence : Prop

def PalaisSmaleClosed {M : MorseFunction} (PS : PalaisSmaleCondition M) : Prop :=
  PS.gradientTendsToZero ∧ PS.convergentSubsequence

theorem palais_smale_closed_from_evidence {M : MorseFunction} (PS : PalaisSmaleCondition M) (h : PS.gradientTendsToZero) (h' : PS.convergentSubsequence) :
    PalaisSmaleClosed PS := by
  exact And.intro h h'

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse