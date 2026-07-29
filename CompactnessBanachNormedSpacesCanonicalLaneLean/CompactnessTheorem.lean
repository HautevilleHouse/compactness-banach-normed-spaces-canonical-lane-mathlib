import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure CompactnessPackage where
  space : BanachSpace
  closedBoundedCompact : Prop
  sequentiallyCompact : Prop
  finiteDimensionalEquivalent : Prop
  metricCompactness : Prop

structure CompactnessEvidence (C : CompactnessPackage) where
  closedBoundedCompactClosed : C.closedBoundedCompact
  sequentiallyCompactClosed : C.sequentiallyCompact
  finiteDimensionalEquivalentClosed : C.finiteDimensionalEquivalent
  metricCompactnessClosed : C.metricCompactness

def CompactnessClosed (C : CompactnessPackage) : Prop :=
  C.closedBoundedCompact ∧ C.sequentiallyCompact ∧
  C.finiteDimensionalEquivalent ∧ C.metricCompactness

theorem compactness_closed_from_evidence (C : CompactnessPackage) (E : CompactnessEvidence C) :
    CompactnessClosed C := by
  exact And.intro E.closedBoundedCompactClosed
    (And.intro E.sequentiallyCompactClosed
      (And.intro E.finiteDimensionalEquivalentClosed E.metricCompactnessClosed))

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse
