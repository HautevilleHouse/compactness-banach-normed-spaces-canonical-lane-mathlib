import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure WeakTopologyPackage where
  space : BanachSpace
  weakTopologyDefined : Prop
  weakStarCompactUnitBall : Prop
  banachAlaogluTheorem : Prop
  reflexivityImpliesUnitBallWeakCompact : Prop

structure WeakTopologyEvidence (W : WeakTopologyPackage) where
  weakTopologyDefinedClosed : W.weakTopologyDefined
  weakStarCompactUnitBallClosed : W.weakStarCompactUnitBall
  banachAlaogluTheoremClosed : W.banachAlaogluTheorem
  reflexivityImpliesUnitBallWeakCompactClosed : W.reflexivityImpliesUnitBallWeakCompact

def WeakTopologyClosed (W : WeakTopologyPackage) : Prop :=
  W.weakTopologyDefined ∧ W.weakStarCompactUnitBall ∧
  W.banachAlaogluTheorem ∧ W.reflexivityImpliesUnitBallWeakCompact

theorem weak_topology_closed_from_evidence (W : WeakTopologyPackage) (E : WeakTopologyEvidence W) :
    WeakTopologyClosed W := by
  exact And.intro E.weakTopologyDefinedClosed
    (And.intro E.weakStarCompactUnitBallClosed
      (And.intro E.banachAlaogluTheoremClosed E.reflexivityImpliesUnitBallWeakCompactClosed))

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
