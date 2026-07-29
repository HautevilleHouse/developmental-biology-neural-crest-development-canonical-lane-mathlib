import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure NeuralCrestDevelopmentPackage where
  neuralCrestInduction : Prop
  delamination : Prop
  epithelialMesenchymalTransition : Prop
  migration : Prop
  differentiation : Prop

structure NeuralCrestDevelopmentEvidence (P : NeuralCrestDevelopmentPackage) where
  neuralCrestInductionClosed : P.neuralCrestInduction
  delaminationClosed : P.delamination
  epithelialMesenchymalTransitionClosed : P.epithelialMesenchymalTransition
  migrationClosed : P.migration
  differentiationClosed : P.differentiation

def NeuralCrestDevelopmentClosed (P : NeuralCrestDevelopmentPackage) : Prop :=
  P.neuralCrestInduction ∧ P.delamination ∧
  P.epithelialMesenchymalTransition ∧ P.migration ∧ P.differentiation

theorem neural_crest_development_closed_from_evidence (P : NeuralCrestDevelopmentPackage)
    (E : NeuralCrestDevelopmentEvidence P) : NeuralCrestDevelopmentClosed P := by
  exact And.intro E.neuralCrestInductionClosed
    (And.intro E.delaminationClosed
      (And.intro E.epithelialMesenchymalTransitionClosed
        (And.intro E.migrationClosed E.differentiationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse