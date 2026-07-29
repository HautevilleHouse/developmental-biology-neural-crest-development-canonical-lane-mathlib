import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

def ConstrainedNeuralCrestClosure (A : AdmissibleClass) (I : NeuralCrestInductionPackage A.object)
    (C : CellMigrationInterface) (M : NeuralCrestMigrationPackage A.object C) : Prop :=
  bridgeClosed A ∧ gateClosed A C M

theorem constrained_neural_crest_endgame (A : AdmissibleClass) (I : NeuralCrestInductionPackage A.object)
    (IE : NeuralCrestInductionEvidence A.object I) (C : CellMigrationInterface)
    (M : NeuralCrestMigrationPackage A.object C) (ME : NeuralCrestMigrationEvidence A.object C M) :
    ConstrainedNeuralCrestClosure A I C M := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A I IE
  · exact gate_from_admissible_class A C M ME

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse