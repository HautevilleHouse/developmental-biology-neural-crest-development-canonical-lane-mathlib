import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopment

structure DifferentiationPackage where
  multipotencyMaintained : Prop
  fatingSignals : Prop
  lineageCommitment : Prop
  terminalDifferentiation : Prop
  plasticityRetained : Prop

structue DifferentiationEvidence (D : DifferentiationPackage) where
  multipotencyMaintainedClosed : D.multipotencyMaintained
  fatingSignalsClosed : D.fatingSignals
  lineageCommitmentClosed : D.lineageCommitment
  terminalDifferentiationClosed : D.terminalDifferentiation
  plasticityRetainedClosed : D.plasticityRetained

def DifferentiationClosed (D : DifferentiationPackage) : Prop :=
  D.multipotencyMaintained ∧ D.fatingSignals ∧
  D.lineageCommitment ∧ D.terminalDifferentiation ∧
  D.plasticityRetained

theorem differentiation_closed_from_evidence (D : DifferentiationPackage) (Ev : DifferentiationEvidence D) :
    DifferentiationClosed D := by
  exact And.intro Ev.multipotencyMaintainedClosed
    (And.intro Ev.fatingSignalsClosed
      (And.intro Ev.lineageCommitmentClosed
        (And.intro Ev.terminalDifferentiationClosed Ev.plasticityRetainedClosed)))

end DevelopmentalBiologyNeuralCrestDevelopment
end HautevilleHouse