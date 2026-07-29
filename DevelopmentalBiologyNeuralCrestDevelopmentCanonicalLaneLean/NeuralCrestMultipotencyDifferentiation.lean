import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure MultipotencyDifferentiationPackage where
  progenitorCellState : Type
  differentiatedLineages : List Type
  lineageSpecificationGenes : Type
  signalingMicroenvironment : Type
  multipotencyMaintained : Prop
  lineageCommitmentTriggered : Prop
  differentiationComplete : Prop
  multipotencyMaintainedTerm : multipotencyMaintained
  lineageCommitmentTriggeredTerm : lineageCommitmentTriggered
  differentiationCompleteTerm : differentiationComplete

structure MultipotencyDifferentiationEvidence (M : MultipotencyDifferentiationPackage) where
  multipotencyMaintainedClosed : M.multipotencyMaintained
  lineageCommitmentTriggeredClosed : M.lineageCommitmentTriggered
  differentiationCompleteClosed : M.differentiationComplete

def MultipotencyDifferentiationClosed (M : MultipotencyDifferentiationPackage) : Prop :=
  M.multipotencyMaintained ∧ M.lineageCommitmentTriggered ∧ M.differentiationComplete

theorem multipotency_differentiation_closed_from_evidence
    (M : MultipotencyDifferentiationPackage) (E : MultipotencyDifferentiationEvidence M) :
    MultipotencyDifferentiationClosed M := by
  exact And.intro E.multipotencyMaintainedClosed (And.intro E.lineageCommitmentTriggeredClosed E.differentiationCompleteClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse