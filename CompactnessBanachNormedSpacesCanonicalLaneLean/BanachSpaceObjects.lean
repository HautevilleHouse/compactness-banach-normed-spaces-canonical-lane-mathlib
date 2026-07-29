import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure BanachSpace where
  carrier : Type
  norm : carrier → ℝ
  vectorSpace : AddCommGroup carrier
  normedSpace : NormedAddCommGroup carrier
  complete : Prop

structure BanachAdmittedObject where
  space : BanachSpace
  unitBallCompact : Prop
  finiteDimensional : Prop
  conclusion : finiteDimensional

def BanachWitnessClosed (O : BanachAdmittedObject) : Prop :=
  O.finiteDimensional

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
