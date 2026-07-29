import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure MigrationCrestPackage where
  cranialMigration : Prop
  trunkMigration : Prop
  vagalSacralMigration : Prop
  guidanceCues : Prop
  extracellularMatrixInteraction : Prop

structure MigrationCrestEvidence (M : MigrationCrestPackage) where
  cranialMigrationClosed : M.cranialMigration
  trunkMigrationClosed : M.trunkMigration
  vagalSacralMigrationClosed : M.vagalSacralMigration
  guidanceCuesClosed : M.guidanceCues
  extracellularMatrixInteractionClosed : M.extracellularMatrixInteraction

def MigrationCrestClosed (M : MigrationCrestPackage) : Prop :=
  M.cranialMigration ∧ M.trunkMigration ∧
  M.vagalSacralMigration ∧ M.guidanceCues ∧ M.extracellularMatrixInteraction

theorem migration_crest_closed_from_evidence (M : MigrationCrestPackage)
    (E : MigrationCrestEvidence M) : MigrationCrestClosed M := by
  exact And.intro E.cranialMigrationClosed
    (And.intro E.trunkMigrationClosed
      (And.intro E.vagalSacralMigrationClosed
        (And.intro E.guidanceCuesClosed E.extracellularMatrixInteractionClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse