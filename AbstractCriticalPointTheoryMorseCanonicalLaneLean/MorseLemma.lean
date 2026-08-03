import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseFunction
import HautevilleHouse.AbstractCriticalPointTheoryMorseCanonicalLaneLean.CriticalPointStructure

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure MorseLemmaPackage (M : MorseFunctionPackage) (C : CriticalPointStructurePackage M) where
  localCoordinatesExists : Prop
  quadraticRepresentation : Prop
  nondegenerateHessian : Prop
  morseLemmaStatement : Prop

structure MorseLemmaEvidence {M : MorseFunctionPackage} {C : CriticalPointStructurePackage M} (L : MorseLemmaPackage M C) where
  localCoordinatesExistsClosed : L.localCoordinatesExists
  quadraticRepresentationClosed : L.quadraticRepresentation
  nondegenerateHessianClosed : L.nondegenerateHessian
  morseLemmaStatementClosed : L.morseLemmaStatement

def MorseLemmaClosed {M : MorseFunctionPackage} {C : CriticalPointStructurePackage M} (L : MorseLemmaPackage M C) : Prop :=
  L.localCoordinatesExists ∧ L.quadraticRepresentation ∧ L.nondegenerateHessian ∧ L.morseLemmaStatement

theorem morse_lemma_closed_from_evidence {M : MorseFunctionPackage} {C : CriticalPointStructurePackage M} (L : MorseLemmaPackage M C) (E : MorseLemmaEvidence L) :
    MorseLemmaClosed L := by
  exact And.intro E.localCoordinatesExistsClosed (And.intro E.quadraticRepresentationClosed (And.intro E.nondegenerateHessianClosed E.morseLemmaStatementClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse