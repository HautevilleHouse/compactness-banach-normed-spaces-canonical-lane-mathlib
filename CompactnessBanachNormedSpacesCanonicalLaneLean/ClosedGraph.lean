import CompactnessBanachNormedSpacesCanonicalLaneLean.OpenMapping

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure ClosedGraphPackage {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U} where
  linearOperator : Type u
  graphClosed : Prop
  operatorBounded : Prop
  isBanachSpace : Prop

structure ClosedGraphEvidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    (C : ClosedGraphPackage O) where
  graphClosedClosed : C.graphClosed
  operatorBoundedClosed : C.operatorBounded
  isBanachSpaceClosed : C.isBanachSpace

def ClosedGraphClosed {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    (C : ClosedGraphPackage O) : Prop :=
  C.graphClosed ∧ C.operatorBounded ∧ C.isBanachSpace

theorem closed_graph_closed_from_evidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} {O : OpenMappingPackage U}
    (C : ClosedGraphPackage O) (E : ClosedGraphEvidence C) : ClosedGraphClosed C := by
  exact And.intro E.graphClosedClosed
    (And.intro E.operatorBoundedClosed E.isBanachSpaceClosed)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse