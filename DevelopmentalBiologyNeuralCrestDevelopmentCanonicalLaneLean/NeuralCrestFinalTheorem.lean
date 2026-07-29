import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean.BridgeLemmas
import DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

def ConstrainedNeuralCrestClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_crest_endgame (A : AdmissibleClass) :
    ConstrainedNeuralCrestClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse