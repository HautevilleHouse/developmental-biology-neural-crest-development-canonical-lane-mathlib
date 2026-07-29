import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopment

structure EMTackage where
  cellAdhesionLoss : Prop
  basementMembraneDegradation : Prop
  actinCytoskeletonRearrangement : Prop
  mesenchymalGeneExpression : Prop
  motilityAcquisition : Prop

structue EMTEvidence (E : EMTackage) where
  cellAdhesionLossClosed : E.cellAdhesionLoss
  basementMembraneDegradationClosed : E.basementMembraneDegradation
  actinCytoskeletonRearrangementClosed : E.actinCytoskeletonRearrangement
  mesenchymalGeneExpressionClosed : E.mesenchymalGeneExpression
  motilityAcquisitionClosed : E.motilityAcquisition

def EMTClosed (E : EMTackage) : Prop :=
  E.cellAdhesionLoss ∧ E.basementMembraneDegradation ∧
  E.actinCytoskeletonRearrangement ∧ E.mesenchymalGeneExpression ∧
  E.motilityAcquisition

theorem emt_closed_from_evidence (E : EMTackage) (Ev : EMTEvidence E) : EMTClosed E := by
  exact And.intro Ev.cellAdhesionLossClosed
    (And.intro Ev.basementMembraneDegradationClosed
      (And.intro Ev.actinCytoskeletonRearrangementClosed
        (And.intro Ev.mesenchymalGeneExpressionClosed Ev.motilityAcquisitionClosed)))

end DevelopmentalBiologyNeuralCrestDevelopment
end HautevilleHouse