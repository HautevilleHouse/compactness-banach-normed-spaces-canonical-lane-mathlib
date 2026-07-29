import CompactBanachNormedSpacesCanonicalLaneLean.HeineBorelProperty

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

structure DualSpacePackage where
  dualBanachSpace : Prop
  weakStarTopology : Prop
  hahnBanachExtension : Prop

structure DualSpaceEvidence (D : DualSpacePackage) where
  dualBanachSpaceClosed : D.dualBanachSpace
  weakStarTopologyClosed : D.weakStarTopology
  hahnBanachExtensionClosed : D.hahnBanachExtension

def DualSpaceClosed (D : DualSpacePackage) : Prop :=
  D.dualBanachSpace ∧ D.weakStarTopology ∧ D.hahnBanachExtension

theorem dual_space_closed_from_evidence (D : DualSpacePackage) (E : DualSpaceEvidence D) : DualSpaceClosed D := by
  exact And.intro E.dualBanachSpaceClosed
    (And.intro E.weakStarTopologyClosed E.hahnBanachExtensionClosed)

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
