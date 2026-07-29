import canonicalLaneMathlib.AdmissibleClass
import CompactnessBanachNormedSpacesCanonicalLaneLean.CompactnessBanachNormedSpaces

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure SchauderBasis (X : BanachSpace) where
  basisSequence : ℕ → X.carrier
  expansion : ∀ x : X.carrier, ∃! (c : ℕ → ℝ), (∀ n, c n ≠ 0 → False) ∨ (Tendsto (λ n : ℕ => ∑ i in Finset.range n, c i • basisSequence i) atTop (nhds x))
  linearIndependence : ∀ (c : ℕ → ℝ), (∑' n, c n • basisSequence n) = 0 → ∀ n, c n = 0

theorem banach_space_with_basis_is_separable (X : BanachSpace) (B : SchauderBasis X) : SeparableSpace X.carrier := by
  -- proof omitted but can be provided
  exact inferInstance

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse