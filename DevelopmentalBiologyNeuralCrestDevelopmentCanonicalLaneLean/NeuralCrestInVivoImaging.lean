import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure InVivoImagingPackage where
  imagingModality : Type
  temporalResolution : Prop
  spatialResolution : Prop
  photobleachingLimitation : Prop
  signalToNoiseRatio : Prop
  cellTrackingAlgorithm : Type
  migrationTrajectoriesRecorded : Prop
  temporalResolutionTerm : temporalResolution
  spatialResolutionTerm : spatialResolution
  photobleachingLimitationTerm : photobleachingLimitation
  signalToNoiseRatioTerm : signalToNoiseRatio
  migrationTrajectoriesRecordedTerm : migrationTrajectoriesRecorded

structure InVivoImagingEvidence (I : InVivoImagingPackage) where
  temporalResolutionClosed : I.temporalResolution
  spatialResolutionClosed : I.spatialResolution
  photobleachingLimitationClosed : I.photobleachingLimitation
  signalToNoiseRatioClosed : I.signalToNoiseRatio
  migrationTrajectoriesRecordedClosed : I.migrationTrajectoriesRecorded

def InVivoImagingClosed (I : InVivoImagingPackage) : Prop :=
  I.temporalResolution ∧ I.spatialResolution ∧ I.photobleachingLimitation ∧
  I.signalToNoiseRatio ∧ I.migrationTrajectoriesRecorded

theorem in_vivo_imaging_closed_from_evidence (I : InVivoImagingPackage)
    (E : InVivoImagingEvidence I) : InVivoImagingClosed I := by
  exact And.intro E.temporalResolutionClosed (And.intro E.spatialResolutionClosed
    (And.intro E.photobleachingLimitationClosed (And.intro E.signalToNoiseRatioClosed
      E.migrationTrajectoriesRecordedClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse