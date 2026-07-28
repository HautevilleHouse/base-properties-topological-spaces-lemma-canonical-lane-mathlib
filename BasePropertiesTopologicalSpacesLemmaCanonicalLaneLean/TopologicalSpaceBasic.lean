import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  opens : Set (Set carrier)
  openUnion : ∀ (U : Set (Set carrier)), U ⊆ opens → Set.union (Set.image id U) ∈ opens
  openInter : ∀ (U : Set (Set carrier)), Set.Finite U → U ⊆ opens → Set.inter (Set.image id U) ∈ opens
  openEmpty : Set.Empty ∈ opens
  openWhole : Set.Univ ∈ opens

structure TopologicalSpaceEvidence (T : TopologicalSpacePackage) where
  openUnionClosed : T.openUnion
  openInterClosed : T.openInter
  openEmptyClosed : T.openEmpty
  openWholeClosed : T.openWhole

def TopologicalSpaceClosed (T : TopologicalSpacePackage) : Prop :=
  T.openUnion ∧ T.openInter ∧ T.openEmpty ∧ T.openWhole

theorem topological_space_closed_from_evidence (T : TopologicalSpacePackage) (E : TopologicalSpaceEvidence T) :
    TopologicalSpaceClosed T := by
  exact And.intro E.openUnionClosed (And.intro E.openInterClosed (And.intro E.openEmptyClosed E.openWholeClosed))

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse