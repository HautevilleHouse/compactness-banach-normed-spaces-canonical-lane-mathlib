import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure BanachAlaogluPackage where
  dualBall : Type u
  weakStarTopology : TopologicalSpace dualBall
  compactness : Prop
  ballCompact : Prop

structure BanachAlaogluEvidence (B : BanachAlaogluPackage) where
  compactnessClosed : B.compactness
  ballCompactClosed : B.ballCompact

def BanachAlaogluClosed (B : BanachAlaogluPackage) : Prop :=
  B.compactness ∧ B.ballCompact

theorem banach_alaoglu_closed_from_evidence (B : BanachAlaogluPackage)
    (E : BanachAlaogluEvidence B) : BanachAlaogluClosed B := by
  exact And.intro E.compactnessClosed E.ballCompactClosed

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
