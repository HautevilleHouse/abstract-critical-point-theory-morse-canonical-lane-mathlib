import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseFunction

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure CriticalPointStructurePackage (M : MorseFunctionPackage) where
  criticalPointsList : List (M.manifold × ℕ)  -- point and index
  indexConsistent : ∀ (p,k) ∈ criticalPointsList, indexAtPoint p M.morseFunction = k
  isolatedPoints : ∀ p ∈ criticalPointsList.map Prod.fst, ∃ U, IsOpen U ∧ p ∈ U ∧ (U \ {p}) ∩ (criticalPointsList.map Prod.fst) = ∅

structure CriticalPointStructureEvidence {M : MorseFunctionPackage} (C : CriticalPointStructurePackage M) where
  indexConsistentClosed : C.indexConsistent
  isolatedPointsClosed : C.isolatedPoints

def CriticalPointStructureClosed {M : MorseFunctionPackage} (C : CriticalPointStructurePackage M) : Prop :=
  C.indexConsistent ∧ C.isolatedPoints

theorem critical_point_structure_closed_from_evidence {M : MorseFunctionPackage} (C : CriticalPointStructurePackage M) (E : CriticalPointStructureEvidence C) :
    CriticalPointStructureClosed C := by
  exact And.intro E.indexConsistentClosed E.isolatedPointsClosed

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse