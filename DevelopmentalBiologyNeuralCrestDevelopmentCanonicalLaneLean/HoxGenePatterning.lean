import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure HoxGenePatterningPackage where
  hoxGeneCluster : Type u
  collinearExpression : Prop
  anteriorPosteriorAxis : Prop
  pharyngealArchPatterning : Prop
  cranialNeuralCrestSubtypes : Prop

structure HoxGenePatterningEvidence (H : HoxGenePatterningPackage) where
  collinearExpressionClosed : H.collinearExpression
  anteriorPosteriorAxisClosed : H.anteriorPosteriorAxis
  pharyngealArchPatterningClosed : H.pharyngealArchPatterning
  cranialNeuralCrestSubtypesClosed : H.cranialNeuralCrestSubtypes

def HoxGenePatterningClosed (H : HoxGenePatterningPackage) : Prop :=
  H.collinearExpression ∧ H.anteriorPosteriorAxis ∧ H.pharyngealArchPatterning ∧
  H.cranialNeuralCrestSubtypes

theorem hox_gene_patterning_closed_from_evidence (H : HoxGenePatterningPackage)
    (E : HoxGenePatterningEvidence H) : HoxGenePatterningClosed H := by
  exact And.intro E.collinearExpressionClosed
    (And.intro E.anteriorPosteriorAxisClosed
      (And.intro E.pharyngealArchPatterningClosed
        E.cranialNeuralCrestSubtypesClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse