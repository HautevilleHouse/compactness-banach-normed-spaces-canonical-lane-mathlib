import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure ArzelaAscoliPackage where
  functionSpace : Type u
  compactOpenTopology : TopologicalSpace functionSpace
  equicontinuousSubset : Set functionSpace
  pointwiseBounded : Prop
  compactClosure : Prop

structure ArzelaAscoliEvidence (A : ArzelaAscoliPackage) where
  equicontinuousSubsetClosed : A.equicontinuousSubset ⊆ A.functionSpace
  pointwiseBoundedClosed : A.pointwiseBounded
  compactClosureClosed : A.compactClosure

def ArzelaAscoliClosed (A : ArzelaAscoliPackage) : Prop :=
  A.equicontinuousSubset ⊆ A.functionSpace ∧ A.pointwiseBounded ∧ A.compactClosure

theorem arzela_ascoli_closed_from_evidence (A : ArzelaAscoliPackage)
    (E : ArzelaAscoliEvidence A) : ArzelaAscoliClosed A := by
  exact And.intro E.equicontinuousSubsetClosed
    (And.intro E.pointwiseBoundedClosed E.compactClosureClosed)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
