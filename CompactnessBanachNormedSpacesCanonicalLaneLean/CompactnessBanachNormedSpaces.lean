import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CompactnessBanachNormedSpacesCanonicalLaneLean

structure BanachSpace where
  carrier : Type u
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, 0 ≤ norm x
  norm_eq_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = 0
  norm_smul : ∀ (α : ℝ) (x : carrier), norm (α • x) = |α| * norm x
  norm_triangle : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  metricSpace : MetricSpace carrier := by
    refine MetricSpace.ofMetric (λ x y => norm (x - y)) ?_ ?_ ?_ ?_
    · intro x; simp
    · intro x y; rw [sub_sub, sub_self, norm_zero]
    · intro x y z; calc
        norm (x - z) = norm ((x - y) + (y - z)) : by ring
        _ ≤ norm (x - y) + norm (y - z) : norm_triangle _ _
    · intro x y; exact norm_eq_zero_iff (x - y)

structure NormedLinearOperator (X Y : BanachSpace) where
  toFun : X.carrier → Y.carrier
  linear : LinearMap ℝ (toFun : X.carrier → Y.carrier)
  bounded : ∃ C : ℝ, ∀ x : X.carrier, Y.norm (toFun x) ≤ C * X.norm x

def operatorNorm (X Y : BanachSpace) (T : NormedLinearOperator X Y) : ℝ := by
  exact sInf {C | 0 ≤ C ∧ ∀ x : X.carrier, Y.norm (T.toFun x) ≤ C * X.norm x}

structure CompactLinearOperator (X Y : BanachSpace) extends NormedLinearOperator X Y where
  compact : Closure (Set.range (λ x : {x : X.carrier | X.norm x ≤ 1} => toFun x.val)) in Y.metricSpace isCompact

end CompactnessBanachNormedSpacesCanonicalLaneLean
end HautevilleHouse