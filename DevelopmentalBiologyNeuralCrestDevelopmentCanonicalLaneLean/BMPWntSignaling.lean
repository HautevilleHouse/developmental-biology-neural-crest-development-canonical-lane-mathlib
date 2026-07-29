import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure BMPWntSignalingPackage where
  bmpSignalingActive : Prop
  wntSignalingActive : Prop
  fgfSignalingModulation : Prop
  nogginChordinAntagonists : Prop
  pathwayCrossTalk : Prop

structure BMPWntSignalingEvidence (S : BMPWntSignalingPackage) where
  bmpSignalingActiveClosed : S.bmpSignalingActive
  wntSignalingActiveClosed : S.wntSignalingActive
  fgfSignalingModulationClosed : S.fgfSignalingModulation
  nogginChordinAntagonistsClosed : S.nogginChordinAntagonists
  pathwayCrossTalkClosed : S.pathwayCrossTalk

def BMPWntSignalingClosed (S : BMPWntSignalingPackage) : Prop :=
  S.bmpSignalingActive ∧ S.wntSignalingActive ∧
  S.fgfSignalingModulation ∧ S.nogginChordinAntagonists ∧ S.pathwayCrossTalk

theorem bmp_wnt_signaling_closed_from_evidence (S : BMPWntSignalingPackage)
    (E : BMPWntSignalingEvidence S) : BMPWntSignalingClosed S := by
  exact And.intro E.bmpSignalingActiveClosed
    (And.intro E.wntSignalingActiveClosed
      (And.intro E.fgfSignalingModulationClosed
        (And.intro E.nogginChordinAntagonistsClosed E.pathwayCrossTalkClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse