import CompactBanachNormedSpacesCanonicalLaneLean.BanachAlaoglu

namespace HautevilleHouse
namespace CompactBanachNormedSpacesCanonicalLaneLean

structure CompactOperatorPackage where
  compactOperatorDefinition : Prop
  compactOperatorsFormIdeal : Prop
  schauderTheorem : Prop

structure CompactOperatorEvidence (C : CompactOperatorPackage) where
  compactOperatorDefinitionClosed : C.compactOperatorDefinition
  compactOperatorsFormIdealClosed : C.compactOperatorsFormIdeal
  schauderTheoremClosed : C.schauderTheorem

def CompactOperatorClosed (C : CompactOperatorPackage) : Prop :=
  C.compactOperatorDefinition ∧ C.compactOperatorsFormIdeal ∧ C.schauderTheorem

theorem compact_operator_closed_from_evidence (C : CompactOperatorPackage) (E : CompactOperatorEvidence C) : CompactOperatorClosed C := by
  exact And.intro E.compactOperatorDefinitionClosed
    (And.intro E.compactOperatorsFormIdealClosed E.schauderTheoremClosed)

end CompactBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
