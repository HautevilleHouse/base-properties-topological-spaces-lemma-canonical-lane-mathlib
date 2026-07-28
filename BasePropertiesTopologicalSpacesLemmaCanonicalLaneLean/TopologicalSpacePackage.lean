import HautevilleHouse.BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : Set (Set carrier)
  openUnion : Prop
  openBinaryInter : Prop
  openEmpty : Prop
  openWhole : Prop

structure TopologicalSpaceEvidence (T : TopologicalSpacePackage) where
  openUnionClosed : T.openUnion
  openBinaryInterClosed : T.openBinaryInter
  openEmptyClosed : T.openEmpty
  openWholeClosed : T.openWhole

def TopologicalSpaceClosed (T : TopologicalSpacePackage) : Prop :=
  T.openUnion ∧ T.openBinaryInter ∧ T.openEmpty ∧ T.openWhole

theorem topological_space_closed_from_evidence
    (T : TopologicalSpacePackage) (E : TopologicalSpaceEvidence T) :
    TopologicalSpaceClosed T := by
  exact And.intro E.openUnionClosed
    (And.intro E.openBinaryInterClosed
      (And.intro E.openEmptyClosed E.openWholeClosed))

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse