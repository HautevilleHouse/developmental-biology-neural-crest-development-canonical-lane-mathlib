import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure CardiacNeuralCrestMigrationPackage where
  cardiacProgenitorCells : Prop
  outflowTractSeptation : Prop
  migrationPathway : Type u
  guidanceCues : Prop
  pharyngealArchArteries : Prop

structure CardiacNeuralCrestMigrationEvidence (C : CardiacNeuralCrestMigrationPackage) where
  cardiacProgenitorCellsClosed : C.cardiacProgenitorCells
  outflowTractSeptationClosed : C.outflowTractSeptation
  migrationPathwayClosed : C.migrationPathway
  guidanceCuesClosed : C.guidanceCues
  pharyngealArchArteriesClosed : C.pharyngealArchArteries

def CardiacNeuralCrestMigrationClosed (C : CardiacNeuralCrestMigrationPackage) : Prop :=
  C.cardiacProgenitorCells ∧ C.outflowTractSeptation ∧ C.migrationPathway ∧
  C.guidanceCues ∧ C.pharyngealArchArteries

theorem cardiac_neural_crest_migration_closed_from_evidence
    (C : CardiacNeuralCrestMigrationPackage)
    (E : CardiacNeuralCrestMigrationEvidence C) :
    CardiacNeuralCrestMigrationClosed C := by
  exact And.intro E.cardiacProgenitorCellsClosed
    (And.intro E.outflowTractSeptationClosed
      (And.intro E.migrationPathwayClosed
        (And.intro E.guidanceCuesClosed
          E.pharyngealArchArteriesClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse