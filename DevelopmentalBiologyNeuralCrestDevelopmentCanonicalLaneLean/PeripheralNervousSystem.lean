import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure PeripheralNervousSystemPackage where
  sensoryNeurons : Prop
  autonomicNeurons : Prop
  entericNeurons : Prop
  glialCells : Prop
  schwannCells : Prop

structure PeripheralNervousSystemEvidence (P : PeripheralNervousSystemPackage) where
  sensoryNeuronsClosed : P.sensoryNeurons
  autonomicNeuronsClosed : P.autonomicNeurons
  entericNeuronsClosed : P.entericNeurons
  glialCellsClosed : P.glialCells
  schwannCellsClosed : P.schwannCells

def PeripheralNervousSystemClosed (P : PeripheralNervousSystemPackage) : Prop :=
  P.sensoryNeurons ∧ P.autonomicNeurons ∧
  P.entericNeurons ∧ P.glialCells ∧ P.schwannCells

theorem peripheral_nervous_system_closed_from_evidence (P : PeripheralNervousSystemPackage)
    (E : PeripheralNervousSystemEvidence P) : PeripheralNervousSystemClosed P := by
  exact And.intro E.sensoryNeuronsClosed
    (And.intro E.autonomicNeuronsClosed
      (And.intro E.entericNeuronsClosed
        (And.intro E.glialCellsClosed E.schwannCellsClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse