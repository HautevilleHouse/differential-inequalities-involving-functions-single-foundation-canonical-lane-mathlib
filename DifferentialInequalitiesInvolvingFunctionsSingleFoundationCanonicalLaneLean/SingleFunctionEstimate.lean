import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure SingleFunctionEstimatePackage where
  functionSource : Type u
  estimateType : Type v
  pointwiseBound : Prop
  integralEstimate : Prop
  exponent : ℝ
  exponentCompatibility : exponent > 0

structure SingleFunctionEstimateEvidence (E : SingleFunctionEstimatePackage) where
  pointwiseBoundClosed : E.pointwiseBound
  integralEstimateClosed : E.integralEstimate
  exponentCompatibilityClosed : E.exponentCompatibility

def SingleFunctionEstimateClosed (E : SingleFunctionEstimatePackage) : Prop :=
  E.pointwiseBound ∧ E.integralEstimate ∧ E.exponentCompatibility

theorem single_function_estimate_closed_from_evidence
    (E : SingleFunctionEstimatePackage) (Ev : SingleFunctionEstimateEvidence E) :
    SingleFunctionEstimateClosed E := by
  exact And.intro Ev.pointwiseBoundClosed
    (And.intro Ev.integralEstimateClosed Ev.exponentCompatibilityClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse