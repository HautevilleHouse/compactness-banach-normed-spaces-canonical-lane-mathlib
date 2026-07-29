import CompactBanachNormedSpacesCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CompactNormedSpace where
  carrier : Type
  norm : carrier → ℝ
  normedAddCommGroup : NormedAddCommGroup carrier
  complete : CompleteSpace carrier

structure CompactAdmittedObject where
  space : CompactNormedSpace
  closedBounded : Prop
  sequentiallyCompact : Prop
  heineBorel : Prop
  conclusion : heineBorel

structure CompactEndgameState where
  object : CompactAdmittedObject

def CompactWitnessClosed (O : CompactAdmittedObject) : Prop :=
  O.heineBorel

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
