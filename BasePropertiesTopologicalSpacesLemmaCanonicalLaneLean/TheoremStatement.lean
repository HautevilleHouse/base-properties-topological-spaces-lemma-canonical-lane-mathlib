import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "BasePropertiesTopologicalSpacesLemma"
def sourceDescription : String := "Base properties of topological spaces: Hausdorff, second countable, regular"
def sourceTheoremBoundary : String := "Classical open boundary"
def baselineCertificateLane : String := "manifold_constrained"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "A Hausdorff, second countable topological space is regular.",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "Classical source boundary carried by formalization"
}

theorem theorem_statement_source_key_checked : sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked : sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

end BasePropertiesTopologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse