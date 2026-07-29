import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure CranialFacialDevelopmentPackage where
  frontonasalProcess : Prop
  pharyngealArch : Prop
  maxillaryProminence : Prop
  mandibularProcess : Prop
  cartilageBoneDifferentiation : Prop

structure CranialFacialDevelopmentEvidence (C : CranialFacialDevelopmentPackage) where
  frontonasalProcessClosed : C.frontonasalProcess
  pharyngealArchClosed : C.pharyngealArch
  maxillaryProminenceClosed : C.maxillaryProminence
  mandibularProcessClosed : C.mandibularProcess
  cartilageBoneDifferentiationClosed : C.cartilageBoneDifferentiation

def CranialFacialDevelopmentClosed (C : CranialFacialDevelopmentPackage) : Prop :=
  C.frontonasalProcess ∧ C.pharyngealArch ∧ C.maxillaryProminence ∧
  C.mandibularProcess ∧ C.cartilageBoneDifferentiation

theorem cranial_facial_development_closed_from_evidence
    (C : CranialFacialDevelopmentPackage)
    (E : CranialFacialDevelopmentEvidence C) :
    CranialFacialDevelopmentClosed C := by
  exact And.intro E.frontonasalProcessClosed
    (And.intro E.pharyngealArchClosed
      (And.intro E.maxillaryProminenceClosed
        (And.intro E.mandibularProcessClosed
          E.cartilageBoneDifferentiationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse