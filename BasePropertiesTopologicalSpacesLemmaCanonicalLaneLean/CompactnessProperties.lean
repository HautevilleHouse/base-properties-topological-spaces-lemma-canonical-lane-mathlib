import HautevilleHouse.BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean.TopologicalSpacePackage

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure CompactnessPackage (T : TopologicalSpacePackage) where
  isCompact : Prop
  finiteIntersectionProperty : Prop

structure CompactnessEvidence {T : TopologicalSpacePackage} (C : CompactnessPackage T) where
  isCompactClosed : C.isCompact
  finiteIntersectionPropertyClosed : C.finiteIntersectionProperty

def CompactnessClosed {T : TopologicalSpacePackage} (C : CompactnessPackage T) : Prop :=
  C.isCompact ∧ C.finiteIntersectionProperty

theorem compactness_closed_from_evidence
    {T : TopologicalSpacePackage} (C : CompactnessPackage T)
    (E : CompactnessEvidence C) : CompactnessClosed C := by
  exact And.intro E.isCompactClosed E.finiteIntersectionPropertyClosed

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse