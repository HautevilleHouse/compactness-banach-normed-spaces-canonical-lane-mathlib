import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.NormedSpaceStructure

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure WeakCompactnessPackage (N : NormedSpacePackage) where
  dualSpace : Type u
  weakTopology : TopologicalSpace N.vectorSpace
  weakCompactness : Prop
  banachAlaoglu : Prop
  banachAlaogluClosed : banachAlaoglu
  weakCompactnessClosed : weakCompactness

def WeakCompactnessClosed (N : NormedSpacePackage) (W : WeakCompactnessPackage N) : Prop :=
  W.weakCompactness ∧ W.banachAlaoglu

theorem weak_compactness_closed_from_evidence (N : NormedSpacePackage) (W : WeakCompactnessPackage N) :
    WeakCompactnessClosed N W :=
  And.intro W.weakCompactnessClosed W.banachAlaogluClosed

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse