import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure NeuralCrestInductionPackage where
  signalingCenter : Type u
  boneMorphogeneticProtein : Prop
  fibroblastGrowthFactor : Prop
  wntSignaling : Prop
  neuralPlateBorderSpecified : Prop
  neuralCrestInducer : Prop

structure NeuralCrestInductionEvidence (I : NeuralCrestInductionPackage) where
  signalingCenterClosed : I.signalingCenter
  boneMorphogeneticProteinClosed : I.boneMorphogeneticProtein
  fibroblastGrowthFactorClosed : I.fibroblastGrowthFactor
  wntSignalingClosed : I.wntSignaling
  neuralPlateBorderSpecifiedClosed : I.neuralPlateBorderSpecified
  neuralCrestInducerClosed : I.neuralCrestInducer

def NeuralCrestInductionClosed (I : NeuralCrestInductionPackage) : Prop :=
  I.signalingCenter ∧ I.boneMorphogeneticProtein ∧ I.fibroblastGrowthFactor ∧
  I.wntSignaling ∧ I.neuralPlateBorderSpecified ∧ I.neuralCrestInducer

theorem neural_crest_induction_closed_from_evidence (I : NeuralCrestInductionPackage)
    (E : NeuralCrestInductionEvidence I) : NeuralCrestInductionClosed I := by
  exact And.intro E.signalingCenterClosed
    (And.intro E.boneMorphogeneticProteinClosed
      (And.intro E.fibroblastGrowthFactorClosed
        (And.intro E.wntSignalingClosed
          (And.intro E.neuralPlateBorderSpecifiedClosed
            E.neuralCrestInducerClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse