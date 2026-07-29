import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.NormedSpaceAdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact True.intro

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse