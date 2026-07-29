import CompactnessBanachNormedSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure HahnBanachExtensionPackage where
  space : Type u
  norm : space → ℝ
  isNormedSpace : Prop
  subspace : Type v
  subspaceNorm : subspace → ℝ
  isSubspace : Prop
  functionalOnSubspace : subspace → ℝ
  isBoundedLinear : Prop
  hasExtension : Prop
  extensionPreservesNorm : Prop

structure HahnBanachExtensionEvidence (H : HahnBanachExtensionPackage) where
  isNormedSpaceClosed : H.isNormedSpace
  isSubspaceClosed : H.isSubspace
  isBoundedLinearClosed : H.isBoundedLinear
  hasExtensionClosed : H.hasExtension
  extensionPreservesNormClosed : H.extensionPreservesNorm

def HahnBanachExtensionClosed (H : HahnBanachExtensionPackage) : Prop :=
  H.isNormedSpace ∧ H.isSubspace ∧ H.isBoundedLinear ∧ H.hasExtension ∧ H.extensionPreservesNorm

theorem hahn_banach_extension_closed_from_evidence (H : HahnBanachExtensionPackage)
    (E : HahnBanachExtensionEvidence H) : HahnBanachExtensionClosed H := by
  exact And.intro E.isNormedSpaceClosed
    (And.intro E.isSubspaceClosed
      (And.intro E.isBoundedLinearClosed
        (And.intro E.hasExtensionClosed E.extensionPreservesNormClosed)))

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse