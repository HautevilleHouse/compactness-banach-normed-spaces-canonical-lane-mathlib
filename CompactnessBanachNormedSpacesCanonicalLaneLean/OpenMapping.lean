import CompactnessBanachNormedSpacesCanonicalLaneLean.UniformBoundedness

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure OpenMappingPackage {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} where
  linearOperator : Type u
  surjective : Prop
  openMapping : Prop
  isBoundedLinear : Prop

structure OpenMappingEvidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} (O : OpenMappingPackage U) where
  surjectiveClosed : O.surjective
  openMappingClosed : O.openMapping
  isBoundedLinearClosed : O.isBoundedLinear

def OpenMappingClosed {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} (O : OpenMappingPackage U) : Prop :=
  O.surjective ∧ O.openMapping ∧ O.isBoundedLinear

theorem open_mapping_closed_from_evidence {G : HahnBanachExtensionPackage}
    {U : UniformBoundednessPackage G} (O : OpenMappingPackage U)
    (E : OpenMappingEvidence O) : OpenMappingClosed O := by
  exact And.intro E.surjectiveClosed
    (And.intro E.openMappingClosed E.isBoundedLinearClosed)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse