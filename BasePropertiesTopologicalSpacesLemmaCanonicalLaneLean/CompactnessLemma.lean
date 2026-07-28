import BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure CompactnessLemmaPackage where
  finiteSubcoverCondition : Prop
  closedInCompactCondition : Prop
  compactImageContinuous : Prop
  heineBorelCondition : Prop

structure CompactnessLemmaEvidence (C : CompactnessLemmaPackage) where
  finiteSubcoverConditionClosed : C.finiteSubcoverCondition
  closedInCompactConditionClosed : C.closedInCompactCondition
  compactImageContinuousClosed : C.compactImageContinuous
  heineBorelConditionClosed : C.heineBorelCondition

def CompactnessLemmaClosed (C : CompactnessLemmaPackage) : Prop :=
  C.finiteSubcoverCondition ∧ C.closedInCompactCondition ∧ C.compactImageContinuous ∧ C.heineBorelCondition

theorem compactness_lemma_closed_from_evidence (C : CompactnessLemmaPackage) (E : CompactnessLemmaEvidence C) :
    CompactnessLemmaClosed C := by
  exact And.intro E.finiteSubcoverConditionClosed (And.intro E.closedInCompactConditionClosed (And.intro E.compactImageContinuousClosed E.heineBorelConditionClosed))

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse