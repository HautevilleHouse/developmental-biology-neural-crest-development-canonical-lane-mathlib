import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopment

structure SpecificationPackage where
  cellType : Type u
  geneRegulatoryNetwork : Type v
  signalingPathways : Type w
  migrationRoute : Type x
  differentiationTargets : Type y
  specificationDetermined : Prop
  migrationProgramActivated : Prop
  competenceForFates : Prop

structure SpecificationEvidence (S : SpecificationPackage) where
  specificationDeterminedClosed : S.specificationDetermined
  migrationProgramActivatedClosed : S.migrationProgramActivated
  competenceForFatesClosed : S.competenceForFates

def SpecificationClosed (S : SpecificationPackage) : Prop :=
  S.specificationDetermined ∧ S.migrationProgramActivated ∧ S.competenceForFates

theorem specification_closed_from_evidence (S : SpecificationPackage) (E : SpecificationEvidence S) :
    SpecificationClosed S := by
  exact And.intro E.specificationDeterminedClosed
    (And.intro E.migrationProgramActivatedClosed E.competenceForFatesClosed)

end DevelopmentalBiologyNeuralCrestDevelopment
end HautevilleHouse