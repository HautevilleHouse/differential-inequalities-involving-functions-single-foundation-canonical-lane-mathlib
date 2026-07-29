import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.DifferentialInequalityFoundation

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure FirstOrderInequalityPackage (P : DifferentialInequalityPackage) where
  gradientEstimate : Prop
  pointwiseBound : Prop
  coercivity : Prop

structure FirstOrderInequalityEvidence (P : DifferentialInequalityPackage) (F : FirstOrderInequalityPackage P) where
  gradientEstimateClosed : F.gradientEstimate
  pointwiseBoundClosed : F.pointwiseBound
  coercivityClosed : F.coercivity

def FirstOrderInequalityClosed (P : DifferentialInequalityPackage) (F : FirstOrderInequalityPackage P) : Prop :=
  F.gradientEstimate ∧ F.pointwiseBound ∧ F.coercivity

theorem first_order_inequality_closed_from_evidence (P : DifferentialInequalityPackage) (F : FirstOrderInequalityPackage P) (E : FirstOrderInequalityEvidence P F) : FirstOrderInequalityClosed P F := by
  exact And.intro E.gradientEstimateClosed (And.intro E.pointwiseBoundClosed E.coercivityClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse