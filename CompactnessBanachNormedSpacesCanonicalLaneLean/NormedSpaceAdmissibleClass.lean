import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.CompactnessBanachNormedSpaces

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure CompactBanachAdmittedObject where
  X : BanachSpace
  Y : BanachSpace
  T : CompactLinearOperator X Y
  conclusion : True

structure AdmissibleClass where
  object : CompactBanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (True) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse