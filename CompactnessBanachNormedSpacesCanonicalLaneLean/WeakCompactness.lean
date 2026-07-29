import CompactnessBanachNormedSpacesCanonicalLaneLean.ClosedGraph

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure WeakCompactnessPackage {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    {C : ClosedGraphPackage O} where
  banachSpace : Type u
  dualSpace : Type v
  weakTopology : Type w
  closedUnitBall : Prop
  weakStarCompactness : Prop
  alaogluTheorem : Prop

structure WeakCompactnessEvidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    {C : ClosedGraphPackage O} (W : WeakCompactnessPackage C) where
  closedUnitBallClosed : W.closedUnitBall
  weakStarCompactnessClosed : W.weakStarCompactness
  alaogluTheoremClosed : W.alaogluTheorem

def WeakCompactnessClosed {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    {C : ClosedGraphPackage O} (W : WeakCompactnessPackage C) : Prop :=
  W.closedUnitBall ∧ W.weakStarCompactness ∧ W.alaogluTheorem

theorem weak_compactness_closed_from_evidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    {C : ClosedGraphPackage O} (W : WeakCompactnessPackage C)
    (E : WeakCompactnessEvidence W) : WeakCompactnessClosed W := by
  exact And.intro E.closedUnitBallClosed
    (And.intro E.weakStarCompactnessClosed E.alaogluTheoremClosed)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse