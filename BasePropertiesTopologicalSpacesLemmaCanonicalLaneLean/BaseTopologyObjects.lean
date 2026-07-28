import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TopologicalSpaceObject where
  carrier : Type u
  topology : TopologicalSpace carrier

structure TopologicalAdmittedObject where
  space : TopologicalSpaceObject
  openSetCondition : Prop
  closedSetCondition : Prop
  compactnessCondition : Prop
  connectednessCondition : Prop
  hausdorffCondition : Prop
  conclusion : openSetCondition ∧ closedSetCondition ∧ compactnessCondition ∧ connectednessCondition ∧ hausdorffCondition

def TopologicalWitnessClosed (O : TopologicalAdmittedObject) : Prop :=
  O.conclusion

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse