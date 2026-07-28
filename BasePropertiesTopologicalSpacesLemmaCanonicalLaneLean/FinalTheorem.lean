import HautevilleHouse.BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

def ConstrainedTopologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_topological_endgame (A : AdmissibleClass) :
    ConstrainedTopologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse