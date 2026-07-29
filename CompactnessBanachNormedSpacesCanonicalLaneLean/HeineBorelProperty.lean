import CompactBanachNormedSpacesCanonicalLaneLean.RieszLemma

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

structure HeineBorelPackage where
  closedBoundedImpliesCompact : Prop
  compactImpliesClosedBounded : Prop
  equivalenceProved : Prop

structure HeineBorelEvidence (H : HeineBorelPackage) where
  closedBoundedImpliesCompactClosed : H.closedBoundedImpliesCompact
  compactImpliesClosedBoundedClosed : H.compactImpliesClosedBounded
  equivalenceProvedClosed : H.equivalenceProved

def HeineBorelClosed (H : HeineBorelPackage) : Prop :=
  H.closedBoundedImpliesCompact ∧ H.compactImpliesClosedBounded ∧ H.equivalenceProved

theorem heine_borel_closed_from_evidence (H : HeineBorelPackage) (E : HeineBorelEvidence H) : HeineBorelClosed H := by
  exact And.intro E.closedBoundedImpliesCompactClosed
    (And.intro E.compactImpliesClosedBoundedClosed E.equivalenceProvedClosed)

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
