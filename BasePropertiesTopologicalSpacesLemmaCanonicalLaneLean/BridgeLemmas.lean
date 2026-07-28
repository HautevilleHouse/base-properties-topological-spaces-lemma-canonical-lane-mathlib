import HautevilleHouse.BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TopologicalBaseWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse