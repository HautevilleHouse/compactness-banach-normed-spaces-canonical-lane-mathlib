import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure FiniteDimensionPackage where
  space : BanachSpace
  linearDualFiniteDim : Prop
  boundedLinearOperatorFiniteRank : Prop
  hahnBanachSeparates : Prop
  unitBallPrecompact : Prop

structure FiniteDimensionEvidence (F : FiniteDimensionPackage) where
  linearDualFiniteDimClosed : F.linearDualFiniteDim
  boundedLinearOperatorFiniteRankClosed : F.boundedLinearOperatorFiniteRank
  hahnBanachSeparatesClosed : F.hahnBanachSeparates
  unitBallPrecompactClosed : F.unitBallPrecompact

def FiniteDimensionClosed (F : FiniteDimensionPackage) : Prop :=
  F.linearDualFiniteDim ∧ F.boundedLinearOperatorFiniteRank ∧
  F.hahnBanachSeparates ∧ F.unitBallPrecompact

theorem finite_dimension_closed_from_evidence (F : FiniteDimensionPackage) (E : FiniteDimensionEvidence F) :
    FiniteDimensionClosed F := by
  exact And.intro E.linearDualFiniteDimClosed
    (And.intro E.boundedLinearOperatorFiniteRankClosed
      (And.intro E.hahnBanachSeparatesClosed E.unitBallPrecompactClosed))

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
