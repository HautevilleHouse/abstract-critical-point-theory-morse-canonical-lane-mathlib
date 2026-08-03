import AbstractCriticalPointTheoryMorseCanonicalLaneLean.MorseFunctionPackage

namespace HautevilleHouse
namespace AbstractCriticalPointTheoryMorseCanonicalLaneLean

structure GradientFlowPackage (M : MorseFunctionPackage) where
  gradientVectorField : M.manifold → TangentBundle M.manifold
  flowMap : ℝ → M.manifold → M.manifold
  flowStartsWithCriticalPoints : Prop
  deformationRetract : Prop
  convergenceToCriticalPoints : Prop
  noPeridicOrbits : Prop

structure GradientFlowEvidence {M : MorseFunctionPackage} (G : GradientFlowPackage M) where
  flowStartsWithCriticalPointsClosed : G.flowStartsWithCriticalPoints
  deformationRetractClosed : G.deformationRetract
  convergenceToCriticalPointsClosed : G.convergenceToCriticalPoints
  noPeridicOrbitsClosed : G.noPeridicOrbits

def GradientFlowClosed {M : MorseFunctionPackage} (G : GradientFlowPackage M) : Prop :=
  G.flowStartsWithCriticalPoints ∧ G.deformationRetract ∧ G.convergenceToCriticalPoints ∧ G.noPeridicOrbits

theorem gradient_flow_closed_from_evidence {M : MorseFunctionPackage} (G : GradientFlowPackage M) (E : GradientFlowEvidence G) :
    GradientFlowClosed G := by
  exact And.intro E.flowStartsWithCriticalPointsClosed
    (And.intro E.deformationRetractClosed
      (And.intro E.convergenceToCriticalPointsClosed E.noPeridicOrbitsClosed))

end AbstractCriticalPointTheoryMorseCanonicalLaneLean
end HautevilleHouse