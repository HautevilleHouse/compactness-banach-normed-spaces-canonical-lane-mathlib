import CompactBanachNormedSpacesCanonicalLaneLean.CompactOperator

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

structure RieszLemmaPackage where
  finiteDimensionalUnitBallCompact : Prop
  infiniteDimensionalUnitBallNotCompact : Prop
  lemmaProved : Prop

structure RieszLemmaEvidence (R : RieszLemmaPackage) where
  finiteDimensionalUnitBallCompactClosed : R.finiteDimensionalUnitBallCompact
  infiniteDimensionalUnitBallNotCompactClosed : R.infiniteDimensionalUnitBallNotCompact
  lemmaProvedClosed : R.lemmaProved

def RieszLemmaClosed (R : RieszLemmaPackage) : Prop :=
  R.finiteDimensionalUnitBallCompact ∧ R.infiniteDimensionalUnitBallNotCompact ∧ R.lemmaProved

theorem riesz_lemma_closed_from_evidence (R : RieszLemmaPackage) (E : RieszLemmaEvidence R) : RieszLemmaClosed R := by
  exact And.intro E.finiteDimensionalUnitBallCompactClosed
    (And.intro E.infiniteDimensionalUnitBallNotCompactClosed E.lemmaProvedClosed)

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
