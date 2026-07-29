import DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean.GeneRegulatoryNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure CellMigrationPackage {G : GeneRegulatoryNetworkPackage} (G : G) where
  chemotaxisGuidance : Prop
  cellMatrixAdhesion : Prop
  cellCellContact : Prop
  collectiveMigration : Prop
  directionalPersistence : Prop
  polarityEstablishment : Prop
  lamellipodiaFormation : Prop

structure CellMigrationEvidence {G : GeneRegulatoryNetworkPackage} (G : G)
    (M : CellMigrationPackage G) where
  chemotaxisGuidanceClosed : M.chemotaxisGuidance
  cellMatrixAdhesionClosed : M.cellMatrixAdhesion
  cellCellContactClosed : M.cellCellContact
  collectiveMigrationClosed : M.collectiveMigration
  directionalPersistenceClosed : M.directionalPersistence
  polarityEstablishmentClosed : M.polarityEstablishment
  lamellipodiaFormationClosed : M.lamellipodiaFormation

def CellMigrationClosed {G : GeneRegulatoryNetworkPackage} (G : G)
    (M : CellMigrationPackage G) : Prop :=
  M.chemotaxisGuidance ∧ M.cellMatrixAdhesion ∧ M.cellCellContact ∧
  M.collectiveMigration ∧ M.directionalPersistence ∧
  M.polarityEstablishment ∧ M.lamellipodiaFormation

theorem cell_migration_closed_from_evidence {G : GeneRegulatoryNetworkPackage}
    (G : G) (M : CellMigrationPackage G) (E : CellMigrationEvidence G M) :
    CellMigrationClosed G M := by
  exact And.intro E.chemotaxisGuidanceClosed
    (And.intro E.cellMatrixAdhesionClosed
      (And.intro E.cellCellContactClosed
        (And.intro E.collectiveMigrationClosed
          (And.intro E.directionalPersistenceClosed
            (And.intro E.polarityEstablishmentClosed
              E.lamellipodiaFormationClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse
