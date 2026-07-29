import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.ArzelaAscoliTheorem
import CompactnessBanachNormedSpacesCanonicalLaneLean.BanachAlaogluTheorem

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

def ConstrainedCompactnessClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_compactness_endgame (A : AdmissibleClass) :
    ConstrainedCompactnessClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
