import CompactBanachNormedSpacesCanonicalLaneLean.DualSpace

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

structure BanachAlaogluPackage where
  closedUnitBallInDualWeakStarCompact : Prop
  sequentialCompactnessIfSeparable : Prop
  theoremProved : Prop

structure BanachAlaogluEvidence (B : BanachAlaogluPackage) where
  closedUnitBallInDualWeakStarCompactClosed : B.closedUnitBallInDualWeakStarCompact
  sequentialCompactnessIfSeparableClosed : B.sequentialCompactnessIfSeparable
  theoremProvedClosed : B.theoremProved

def BanachAlaogluClosed (B : BanachAlaogluPackage) : Prop :=
  B.closedUnitBallInDualWeakStarCompact ∧ B.sequentialCompactnessIfSeparable ∧ B.theoremProved

theorem banach_alaoglu_closed_from_evidence (B : BanachAlaogluPackage) (E : BanachAlaogluEvidence B) : BanachAlaogluClosed B := by
  exact And.intro E.closedUnitBallInDualWeakStarCompactClosed
    (And.intro E.sequentialCompactnessIfSeparableClosed E.theoremProvedClosed)

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
