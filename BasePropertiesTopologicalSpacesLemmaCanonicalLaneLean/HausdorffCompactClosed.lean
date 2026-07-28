import Mathlib.Topology.Basic
import Mathlib.Topology.Separation
import Mathlib.Topology.Instances.Real
import BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

open Set

/-- In a Hausdorff space, compact subsets are closed. -/
theorem compact_subset_of_hausdorff_is_closed {X : Type u} [TopologicalSpace X] [T2Space X]
    (K : Set X) (hK : IsCompact K) : IsClosed K :=
  hK.isClosed

/-- Construct a CompactSubsetAdmittedObject from a Hausdorff space and a compact set. -/
def buildCompactSubsetAdmittedObject {X : Type u} [TopologicalSpace X] [T2Space X]
    [SecondCountableTopology X] (K : Set X) (hK : IsCompact K) : CompactSubsetAdmittedObject where
  space := {
    carrier := X
    top := inferInstance
    isHausdorff := inferInstance
    isSecondCountable := inferInstance
  }
  subset := K
  isCompact := hK
  conclusion := hK.isClosed

/-- Example using the theorem with the Euclidean line. -/
example : IsClosed (Set.Icc 0 1 : Set ℝ) := by
  have h : IsCompact (Set.Icc 0 1 : Set ℝ) := isCompact_Icc
  exact compact_subset_of_hausdorff_is_closed (Set.Icc 0 1) h

end
end