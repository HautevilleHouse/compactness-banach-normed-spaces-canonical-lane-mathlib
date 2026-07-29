import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : BanachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BanachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
