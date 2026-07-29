import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure CraniofacialDevelopmentPackage where
  frontonasalProminence : Prop
  pharyngealArches : Prop
  maxillaryMandibularProcesses : Prop
  skeletalDifferentiation : Prop
  connectiveTissueFormation : Prop

structure CraniofacialDevelopmentEvidence (C : CraniofacialDevelopmentPackage) where
  frontonasalProminenceClosed : C.frontonasalProminence
  pharyngealArchesClosed : C.pharyngealArches
  maxillaryMandibularProcessesClosed : C.maxillaryMandibularProcesses
  skeletalDifferentiationClosed : C.skeletalDifferentiation
  connectiveTissueFormationClosed : C.connectiveTissueFormation

def CraniofacialDevelopmentClosed (C : CraniofacialDevelopmentPackage) : Prop :=
  C.frontonasalProminence ∧ C.pharyngealArches ∧
  C.maxillaryMandibularProcesses ∧ C.skeletalDifferentiation ∧ C.connectiveTissueFormation

theorem craniofacial_development_closed_from_evidence (C : CraniofacialDevelopmentPackage)
    (E : CraniofacialDevelopmentEvidence C) : CraniofacialDevelopmentClosed C := by
  exact And.intro E.frontonasalProminenceClosed
    (And.intro E.pharyngealArchesClosed
      (And.intro E.maxillaryMandibularProcessesClosed
        (And.intro E.skeletalDifferentiationClosed E.connectiveTissueFormationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse