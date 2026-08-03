import AbstractCriticalPointTheoryMorseLean.MorseFunction
import AbstractCriticalPointTheoryMorseLean.GradientFlow

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure MorseHomology {M : MorseFunction} (F : GradientFlow M) where
  chainComplex : ℕ → Type
  boundaryMap : ℕ → (chainComplex (n+1) → chainComplex n)
  homologyGroups : ℕ → Type
  wellDefined : Prop

def MorseHomologyClosed {M : MorseFunction} {F : GradientFlow M} (H : MorseHomology M F) : Prop :=
  H.wellDefined

theorem morse_homology_closed_from_evidence {M : MorseFunction} {F : GradientFlow M} (H : MorseHomology M F) (h : H.wellDefined) :
    MorseHomologyClosed H := by
  exact h

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse