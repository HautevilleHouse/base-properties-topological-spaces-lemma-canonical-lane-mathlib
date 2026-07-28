import BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure ClosurePropertiesPackage where
  interiorClosed : Prop
  closureClosed : Prop
  boundaryClosed : Prop
  denseCondition : Prop

structure ClosurePropertiesEvidence (C : ClosurePropertiesPackage) where
  interiorClosedClosed : C.interiorClosed
  closureClosedClosed : C.closureClosed
  boundaryClosedClosed : C.boundaryClosed
  denseConditionClosed : C.denseCondition

def ClosurePropertiesClosed (C : ClosurePropertiesPackage) : Prop :=
  C.interiorClosed ∧ C.closureClosed ∧ C.boundaryClosed ∧ C.denseCondition

theorem closure_properties_closed_from_evidence (C : ClosurePropertiesPackage) (E : ClosurePropertiesEvidence C) :
    ClosurePropertiesClosed C := by
  exact And.intro E.interiorClosedClosed (And.intro E.closureClosedClosed (And.intro E.boundaryClosedClosed E.denseConditionClosed))

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse