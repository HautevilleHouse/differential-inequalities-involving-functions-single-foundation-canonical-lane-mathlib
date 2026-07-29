import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.DifferentialInequalityFoundation

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure SobolevInequalityPackage (P : DifferentialInequalityPackage) where
  sobolevEmbedding : Prop
  normEstimate : Prop
  sharpConstant : Prop

structure SobolevInequalityEvidence (P : DifferentialInequalityPackage) (S : SobolevInequalityPackage P) where
  sobolevEmbeddingClosed : S.sobolevEmbedding
  normEstimateClosed : S.normEstimate
  sharpConstantClosed : S.sharpConstant

def SobolevInequalityClosed (P : DifferentialInequalityPackage) (S : SobolevInequalityPackage P) : Prop :=
  S.sobolevEmbedding ∧ S.normEstimate ∧ S.sharpConstant

theorem sobolev_inequality_closed_from_evidence (P : DifferentialInequalityPackage) (S : SobolevInequalityPackage P) (E : SobolevInequalityEvidence P S) : SobolevInequalityClosed P S := by
  exact And.intro E.sobolevEmbeddingClosed (And.intro E.normEstimateClosed E.sharpConstantClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse