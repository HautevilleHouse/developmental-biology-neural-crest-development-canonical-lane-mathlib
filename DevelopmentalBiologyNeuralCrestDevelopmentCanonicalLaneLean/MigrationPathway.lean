import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopment

structure MigrationPackage where
  guidanceCues : Prop
  pathwayPrepatterned : Prop
  cellPolarity : Prop
  collectiveMigration : Prop
  homingTarget : Prop

structue MigrationEvidence (M : MigrationPackage) where
  guidanceCuesClosed : M.guidanceCues
  pathwayPrepatternedClosed : M.pathwayPrepatterned
  cellPolarityClosed : M.cellPolarity
  collectiveMigrationClosed : M.collectiveMigration
  homingTargetClosed : M.homingTarget

def MigrationClosed (M : MigrationPackage) : Prop :=
  M.guidanceCues ∧ M.pathwayPrepatterned ∧
  M.cellPolarity ∧ M.collectiveMigration ∧
  M.homingTarget

theorem migration_closed_from_evidence (M : MigrationPackage) (Ev : MigrationEvidence M) :
    MigrationClosed M := by
  exact And.intro Ev.guidanceCuesClosed
    (And.intro Ev.pathwayPrepatternedClosed
      (And.intro Ev.cellPolarityClosed
        (And.intro Ev.collectiveMigrationClosed Ev.homingTargetClosed)))

end DevelopmentalBiologyNeuralCrestDevelopment
end HautevilleHouse