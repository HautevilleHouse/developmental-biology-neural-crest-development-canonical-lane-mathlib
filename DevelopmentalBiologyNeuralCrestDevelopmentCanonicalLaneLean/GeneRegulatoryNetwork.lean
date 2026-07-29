import DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  sox10Expression : Prop
  snai1Snai2Expression : Prop
  foxd3Expression : Prop
  tfap2Expression : Prop
  eCadherinRepression : Prop
  rhoGtpaseActivation : Prop
  emtInduction : Prop
  delamination : Prop
  migrationInitiation : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  sox10ExpressionClosed : G.sox10Expression
  snai1Snai2ExpressionClosed : G.snai1Snai2Expression
  foxd3ExpressionClosed : G.foxd3Expression
  tfap2ExpressionClosed : G.tfap2Expression
  eCadherinRepressionClosed : G.eCadherinRepression
  rhoGtpaseActivationClosed : G.rhoGtpaseActivation
  emtInductionClosed : G.emtInduction
  delaminationClosed : G.delamination
  migrationInitiationClosed : G.migrationInitiation

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.sox10Expression ∧ G.snai1Snai2Expression ∧ G.foxd3Expression ∧
  G.tfap2Expression ∧ G.eCadherinRepression ∧ G.rhoGtpaseActivation ∧
  G.emtInduction ∧ G.delamination ∧ G.migrationInitiation

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.sox10ExpressionClosed
    (And.intro E.snai1Snai2ExpressionClosed
      (And.intro E.foxd3ExpressionClosed
        (And.intro E.tfap2ExpressionClosed
          (And.intro E.eCadherinRepressionClosed
            (And.intro E.rhoGtpaseActivationClosed
              (And.intro E.emtInductionClosed
                (And.intro E.delaminationClosed E.migrationInitiationClosed)))))))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse
