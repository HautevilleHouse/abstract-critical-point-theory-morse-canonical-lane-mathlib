import AbstractCriticalPointTheoryMorseLean.MorseAdmissibleClass

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseLean

def bridgeClosed (A : MorseAdmissibleClass) : Prop :=
  MorseWitnessClosed A.object

theorem bridge_from_admissible_class (A : MorseAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AbstractCriticalPointTheoryMorseLean
end HautevilleHouse