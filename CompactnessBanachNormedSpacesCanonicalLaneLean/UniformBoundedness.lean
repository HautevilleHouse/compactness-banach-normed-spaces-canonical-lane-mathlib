import CompactnessBanachNormedSpacesCanonicalLaneLean.HahnBanachBridge

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure UniformBoundednessPackage {G : HahnBanachExtensionPackage} where
  familyOfOperators : Type u
  pointwiseBounded : Prop
  uniformBounded : Prop
  isBanachSpace : Prop

structure UniformBoundednessEvidence {G : HahnBanachExtensionPackage}
    (U : UniformBoundednessPackage G) where
  pointwiseBoundedClosed : U.pointwiseBounded
  uniformBoundedClosed : U.uniformBounded
  isBanachSpaceClosed : U.isBanachSpace

def UniformBoundednessClosed {G : HahnBanachExtensionPackage}
    (U : UniformBoundednessPackage G) : Prop :=
  U.pointwiseBounded ∧ U.uniformBounded ∧ U.isBanachSpace

theorem uniform_boundedness_closed_from_evidence {G : HahnBanachExtensionPackage}
    (U : UniformBoundednessPackage G) (E : UniformBoundednessEvidence U) :
    UniformBoundednessClosed U := by
  exact And.intro E.pointwiseBoundedClosed
    (And.intro E.uniformBoundedClosed E.isBanachSpaceClosed)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse