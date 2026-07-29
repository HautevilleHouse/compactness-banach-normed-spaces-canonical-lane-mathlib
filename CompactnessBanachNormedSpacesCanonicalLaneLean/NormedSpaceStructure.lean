import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure NormedSpacePackage where
  scalarField : Type u
  vectorSpace : Type v
  norm : vectorSpace → ℝ
  normedVectorSpace : Prop
  completeNorm : Prop
  normedVectorSpaceClosed : normedVectorSpace
  completeNormClosed : completeNorm

def NormedSpaceClosed (N : NormedSpacePackage) : Prop :=
  N.normedVectorSpace ∧ N.completeNorm

theorem normed_space_closed_from_evidence (N : NormedSpacePackage) :
    NormedSpaceClosed N :=
  And.intro N.normedVectorSpaceClosed N.completeNormClosed

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse