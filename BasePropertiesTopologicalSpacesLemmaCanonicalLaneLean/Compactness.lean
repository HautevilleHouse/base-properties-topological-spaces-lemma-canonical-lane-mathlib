import Mathlib.Topology.Compactness
import BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

open Set

/-- In a Hausdorff space, a set is compact iff it satisfies the finite intersection property for closed sets. -/
theorem compact_iff_finite_intersection_closed {X : Type u} [TopologicalSpace X]
    (K : Set X) : IsCompact K ↔
    ∀ (F : Set (Set X)), (∀ C ∈ F, IsClosed C) → (∀ G : Finset (Set X), G ⊆ F → (⋂₀ (G : Set (Set X))) ∩ K ≠ ∅) →
    (⋂₀ F) ∩ K ≠ ∅ :=
  isCompact_iff_finiteIntersection K

/-- A compact subset of a Hausdorff space is closed (alternative proof). -/
theorem compact_implies_closed {X : Type u} [TopologicalSpace X] [T2Space X]
    (K : Set X) (hK : IsCompact K) : IsClosed K :=
  hK.isClosed

end
end