import HautevilleHouse.BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.TopologicalSpacePackage

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure ConnectednessPackage (T : TopologicalSpacePackage) where
  isConnected : Prop
  isPathConnected : Prop

structure ConnectednessEvidence {T : TopologicalSpacePackage} (C : ConnectednessPackage T) where
  isConnectedClosed : C.isConnected
  isPathConnectedClosed : C.isPathConnected

def ConnectednessClosed {T : TopologicalSpacePackage} (C : ConnectednessPackage T) : Prop :=
  C.isConnected ∧ C.isPathConnected

theorem connectedness_closed_from_evidence
    {T : TopologicalSpacePackage} (C : ConnectednessPackage T)
    (E : ConnectednessEvidence C) : ConnectednessClosed C := by
  exact And.intro E.isConnectedClosed E.isPathConnectedClosed

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse