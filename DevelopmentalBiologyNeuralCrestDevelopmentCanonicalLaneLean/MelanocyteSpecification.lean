import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure MelanocyteSpecificationPackage where
  mitfExpression : Prop
  wntBetaCatenin : Prop
  tyrosinaseActivation : Prop
  pigmentProduction : Prop
  melanoblastMigration : Prop

structure MelanocyteSpecificationEvidence (M : MelanocyteSpecificationPackage) where
  mitfExpressionClosed : M.mitfExpression
  wntBetaCateninClosed : M.wntBetaCatenin
  tyrosinaseActivationClosed : M.tyrosinaseActivation
  pigmentProductionClosed : M.pigmentProduction
  melanoblastMigrationClosed : M.melanoblastMigration

def MelanocyteSpecificationClosed (M : MelanocyteSpecificationPackage) : Prop :=
  M.mitfExpression ∧ M.wntBetaCatenin ∧ M.tyrosinaseActivation ∧
  M.pigmentProduction ∧ M.melanoblastMigration

theorem melanocyte_specification_closed_from_evidence
    (M : MelanocyteSpecificationPackage)
    (E : MelanocyteSpecificationEvidence M) :
    MelanocyteSpecificationClosed M := by
  exact And.intro E.mitfExpressionClosed
    (And.intro E.wntBetaCateninClosed
      (And.intro E.tyrosinaseActivationClosed
        (And.intro E.pigmentProductionClosed
          E.melanoblastMigrationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse