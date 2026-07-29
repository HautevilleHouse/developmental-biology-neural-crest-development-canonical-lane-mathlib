import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

structure EpithelialMesenchymalTransitionPackage where
  cadherinSwitch : Prop
  cellAdhesionMolecules : Prop
  cytoskeletalRearrangement : Prop
  basementMembraneDegradation : Prop
  cellMigrationInitiation : Prop

structure EpithelialMesenchymalTransitionEvidence (E : EpithelialMesenchymalTransitionPackage) where
  cadherinSwitchClosed : E.cadherinSwitch
  cellAdhesionMoleculesClosed : E.cellAdhesionMolecules
  cytoskeletalRearrangementClosed : E.cytoskeletalRearrangement
  basementMembraneDegradationClosed : E.basementMembraneDegradation
  cellMigrationInitiationClosed : E.cellMigrationInitiation

def EpithelialMesenchymalTransitionClosed (E : EpithelialMesenchymalTransitionPackage) : Prop :=
  E.cadherinSwitch ∧ E.cellAdhesionMolecules ∧ E.cytoskeletalRearrangement ∧
  E.basementMembraneDegradation ∧ E.cellMigrationInitiation

theorem epithelial_mesenchymal_transition_closed_from_evidence
    (E : EpithelialMesenchymalTransitionPackage)
    (Ev : EpithelialMesenchymalTransitionEvidence E) :
    EpithelialMesenchymalTransitionClosed E := by
  exact And.intro Ev.cadherinSwitchClosed
    (And.intro Ev.cellAdhesionMoleculesClosed
      (And.intro Ev.cytoskeletalRearrangementClosed
        (And.intro Ev.basementMembraneDegradationClosed
          Ev.cellMigrationInitiationClosed)))

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse