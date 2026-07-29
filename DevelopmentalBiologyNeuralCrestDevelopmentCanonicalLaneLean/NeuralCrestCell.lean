import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopment

structure NeuralCrestCell where
  cellCarrier : Type
  epitheliumTopology : TopologicalSpace cellCarrier
  dorsalMidlineOrigin : Prop
  epithelialToMesenchymalTransition : Prop
  migratoryPathway : Prop
  multipotent : Prop

structure NeuralCrestAdmittedObject where
  cell : NeuralCrestCell
  dorsalMidlineOriginClosed : cell.dorsalMidlineOrigin
  epithelialToMesenchymalTransitionClosed : cell.epithelialToMesenchymalTransition
  migratoryPathwayClosed : cell.migratoryPathway
  multipotentClosed : cell.multipotent

end DevelopmentalBiologyNeuralCrestDevelopment
end HautevilleHouse