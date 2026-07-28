import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure SeparationPackage (T : TopologicalSpacePackage) where
  hausdorff : Prop
  regular : Prop
  normal : Prop
  t1 : Prop

structure SeparationEvidence {T : TopologicalSpacePackage} (S : SeparationPackage T) where
  hausdorffClosed : S.hausdorff
  regularClosed : S.regular
  normalClosed : S.normal
  t1Closed : S.t1

def SeparationClosed {T : TopologicalSpacePackage} (S : SeparationPackage T) : Prop :=
  S.hausdorff ∧ S.regular ∧ S.normal ∧ S.t1

theorem separation_closed_from_evidence {T : TopologicalSpacePackage} (S : SeparationPackage T) (E : SeparationEvidence S) :
    SeparationClosed S := by
  exact And.intro E.hausdorffClosed (And.intro E.regularClosed (And.intro E.normalClosed E.t1Closed))

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse