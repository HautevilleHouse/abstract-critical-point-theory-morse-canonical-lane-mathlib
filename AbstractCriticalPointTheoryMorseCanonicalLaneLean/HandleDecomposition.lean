import AbstractCriticalPointTheoryMorseCanonicalLaneLean.GradientFlow

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure HandleDecompositionPackage {M : MorseFunctionPackage}
    (G : GradientFlowPackage M) where
  attachingSpheres : ∀ (p : M.manifold), p ∈ M.criticalPointsSet → Set (G.stableManifolds p (by assumption))
  handleBodies : ℕ → Set M.manifold
  diffeomorphism : M.manifold ≃ (disjointUnionOverCriticalPoints ?_) -- placeheld
  closureCondition : Prop

structure HandleDecompositionEvidence {M : MorseFunctionPackage}
    {G : GradientFlowPackage M} (H : HandleDecompositionPackage G) where
  attachingSpheresClosed : ∀ p, p ∈ M.criticalPointsSet → Set.Nonempty (H.attachingSpheres p (by assumption))
  handleBodiesClosed : ∀ n, Set.Nonempty (H.handleBodies n)
  closureConditionClosed : H.closureCondition

def HandleDecompositionClosed {M : MorseFunctionPackage} {G : GradientFlowPackage M}
    (H : HandleDecompositionPackage G) : Prop :=
  H.closureCondition

theorem handle_decomposition_closed_from_evidence {M : MorseFunctionPackage}
    {G : GradientFlowPackage M} (H : HandleDecompositionPackage G)
    (E : HandleDecompositionEvidence H) : HandleDecompositionClosed H :=
  E.closureConditionClosed

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse
