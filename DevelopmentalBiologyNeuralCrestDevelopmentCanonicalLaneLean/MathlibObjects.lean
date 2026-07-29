import DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuralCrestSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuralCrestAdmittedObject where
  space : NeuralCrestSpace
  embryoStage : Prop
  neuralPlateBorder : Prop
  emtCompleted : Prop
  migrationInitiated : Prop
  conclusion : migrationInitiated

structure NeuralCrestEndgameState where
  object : NeuralCrestAdmittedObject

def NeuralCrestWitnessClosed (O : NeuralCrestAdmittedObject) : Prop :=
  O.migrationInitiated

end DevelopmentalBiologyNeuralCrestDevelopmentCanonicalLaneLean
end HautevilleHouse
