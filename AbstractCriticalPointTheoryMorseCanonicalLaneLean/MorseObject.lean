import AbstractCriticalPointTheoryMorseLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

structure MorseObject where
  function : MorseFunction
  criticalPoints : List (MorseFunction.Point)
  nondegenerate : ∀ p ∈ criticalPoints, HessianNondegenerate function p
  conclusion : Prop

def MorseWitnessClosed (O : MorseObject) : Prop :=
  O.conclusion

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse