import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  nodeGeneSet : Type
  edgeRegulatoryInteractions : Type
  signalingPathwayInputs : Type
  transcriptionFactorsList : Type
  networkTopology : Prop
  feedbackLoops : Prop
  robustnessToNoise : Prop
  networkTopologyTerm : networkTopology
  feedbackLoopsTerm : feedbackLoops
  robustnessToNoiseTerm : robustnessToNoise

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  networkTopologyClosed : G.networkTopology
  feedbackLoopsClosed : G.feedbackLoops
  robustnessToNoiseClosed : G.robustnessToNoise

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.networkTopology ∧ G.feedbackLoops ∧ G.robustnessToNoise

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage)
    (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.networkTopologyClosed (And.intro E.feedbackLoopsClosed E.robustnessToNoiseClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse