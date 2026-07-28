import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  hausdorff : Prop
  secondCountable : Prop
  separable : Prop
  compact : Prop
  connected : Prop

def topologicalSpaceClosed (P : TopologicalSpacePackage) : Prop :=
  P.hausdorff ∧ P.secondCountable ∧ P.separable ∧ P.compact ∧ P.connected

structure AdmittedTopologicalObject where
  space : TopologicalSpacePackage
  conclusion : topologicalSpaceClosed space

def AdmissibleClass : Type 1 := AdmittedTopologicalObject

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse