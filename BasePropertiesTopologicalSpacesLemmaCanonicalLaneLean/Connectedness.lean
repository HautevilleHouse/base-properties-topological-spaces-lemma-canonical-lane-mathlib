import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure ConnectednessPackage (T : TopologicalSpacePackage) where
  connected : Prop
  pathConnected : Prop
  simplyConnected : Prop

structure ConnectednessEvidence {T : TopologicalSpacePackage} (C : ConnectednessPackage T) where
  connectedClosed : C.connected
  pathConnectedClosed : C.pathConnected
  simplyConnectedClosed : C.simplyConnected

def ConnectednessClosed {T : TopologicalSpacePackage} (C : ConnectednessPackage T) : Prop :=
  C.connected ∧ C.pathConnected ∧ C.simplyConnected

theorem connectedness_closed_from_evidence {T : TopologicalSpacePackage} (C : ConnectednessPackage T) (E : ConnectednessEvidence C) :
    ConnectednessClosed C := by
  exact And.intro E.connectedClosed (And.intro E.pathConnectedClosed E.simplyConnectedClosed)

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse