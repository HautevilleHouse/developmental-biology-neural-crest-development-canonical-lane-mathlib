import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure EMTTransitionPackage where
  epithelialMarkerLoss : Prop
  mesenchymalMarkerGain : Prop
  eCadherinRepression : Prop
  nCadherinActivation : Prop
  snailSnugExpression : Prop
  twistExpression : Prop
  emtCompleted : Prop
  epithelialMarkerLossTerm : epithelialMarkerLoss
  mesenchymalMarkerGainTerm : mesenchymalMarkerGain
  eCadherinRepressionTerm : eCadherinRepression
  nCadherinActivationTerm : nCadherinActivation
  snailSnugExpressionTerm : snailSnugExpression
  twistExpressionTerm : twistExpression
  emtCompletedTerm : emtCompleted

structure EMTTransitionEvidence (E : EMTTransitionPackage) where
  epithelialMarkerLossClosed : E.epithelialMarkerLoss
  mesenchymalMarkerGainClosed : E.mesenchymalMarkerGain
  eCadherinRepressionClosed : E.eCadherinRepression
  nCadherinActivationClosed : E.nCadherinActivation
  snailSnugExpressionClosed : E.snailSnugExpression
  twistExpressionClosed : E.twistExpression
  emtCompletedClosed : E.emtCompleted

def EMTTransitionClosed (E : EMTTransitionPackage) : Prop :=
  E.epithelialMarkerLoss ∧ E.mesenchymalMarkerGain ∧ E.eCadherinRepression ∧
  E.nCadherinActivation ∧ E.snailSnugExpression ∧ E.twistExpression ∧ E.emtCompleted

theorem emt_transition_closed_from_evidence (E : EMTTransitionPackage)
    (Ev : EMTTransitionEvidence E) : EMTTransitionClosed E := by
  refine And.intro Ev.epithelialMarkerLossClosed (And.intro Ev.mesenchymalMarkerGainClosed
    (And.intro Ev.eCadherinRepressionClosed (And.intro Ev.nCadherinActivationClosed
    (And.intro Ev.snailSnugExpressionClosed (And.intro Ev.twistExpressionClosed Ev.emtCompletedClosed)))))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse