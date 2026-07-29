import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.NormedSpaceStructure

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure RelativeCompactnessPackage (N : NormedSpacePackage) where
  subset : Set N.vectorSpace
  closureCompact : Prop
  precompact : Prop
  closureCompactClosed : closureCompact
  precompactClosed : precompact

def RelativeCompactnessClosed (N : NormedSpacePackage) (R : RelativeCompactnessPackage N) : Prop :=
  R.closureCompact ∧ R.precompact

theorem relative_compactness_closed_from_evidence (N : NormedSpacePackage) (R : RelativeCompactnessPackage N) :
    RelativeCompactnessClosed N R :=
  And.intro R.closureCompactClosed R.precompactClosed

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse