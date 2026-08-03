import AbstractCriticalPointTheoryMorseLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure GradientFlow {M : MorseFunction} where
  time : Type
  flowMap : M.Point → time → M.Point
  odeSatisfied : Prop

def GradientFlowClosed {M : MorseFunction} (F : GradientFlow M) : Prop :=
  F.odeSatisfied

theorem gradient_flow_closed_from_evidence {M : MorseFunction} (F : GradientFlow M) (h : F.odeSatisfied) :
    GradientFlowClosed F := by
  exact h

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse