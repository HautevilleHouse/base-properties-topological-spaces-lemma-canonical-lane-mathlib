import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TopologicalBaseObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  openUnion : Prop
  openInter : Prop
  emptyOpen : Prop
  wholeOpen : Prop
  conclusion : openUnion ∧ openInter ∧ emptyOpen ∧ wholeOpen

def TopologicalBaseWitnessClosed (O : TopologicalBaseObject) : Prop :=
  O.openUnion ∧ O.openInter ∧ O.emptyOpen ∧ O.wholeOpen

structure AdmissibleClass where
  object : TopologicalBaseObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TopologicalBaseWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse