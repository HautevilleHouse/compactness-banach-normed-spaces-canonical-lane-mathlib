import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure CompactnessObject where
  space : Type u
  topology : TopologicalSpace space
  banachSpace : Prop
  compactSubset : Set space
  compactnessProperty : Prop
  conclusion : compactnessProperty

structure AdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  banachSpace : Prop
  compactSubset : Set space
  conclusion : Prop

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse