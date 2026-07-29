import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure NeuralCrestMigrationPackage (N : NeuralCrestCell) (C : CellMigrationInterface) where
  epithelialMesenchymalTransition : Prop
  chemotaxisGuidance : Prop
  collectiveCellStreaming : Prop
  targetTissueArrival : Prop

structure NeuralCrestMigrationEvidence (N : NeuralCrestCell) (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage N C) where
  epithelialMesenchymalTransitionClosed : M.epithelialMesenchymalTransition
  chemotaxisGuidanceClosed : M.chemotaxisGuidance
  collectiveCellStreamingClosed : M.collectiveCellStreaming
  targetTissueArrivalClosed : M.targetTissueArrival

def NeuralCrestMigrationClosed (N : NeuralCrestCell) (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage N C) : Prop :=
  M.epithelialMesenchymalTransition ∧ M.chemotaxisGuidance ∧
  M.collectiveCellStreaming ∧ M.targetTissueArrival

theorem neural_crest_migration_closed_from_evidence
    (N : NeuralCrestCell) (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage N C)
    (E : NeuralCrestMigrationEvidence N C M) : NeuralCrestMigrationClosed N C M := by
  exact And.intro E.epithelialMesenchymalTransitionClosed
    (And.intro E.chemotaxisGuidanceClosed
      (And.intro E.collectiveCellStreamingClosed
        E.targetTissueArrivalClosed))

def gateClosed (A : AdmissibleClass) (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage A.object C) : Prop :=
  NeuralCrestMigrationClosed A.object C M

theorem gate_from_admissible_class
    (A : AdmissibleClass) (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage A.object C)
    (E : NeuralCrestMigrationEvidence A.object C M) : gateClosed A C M := by
  exact neural_crest_migration_closed_from_evidence A.object C M E

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse