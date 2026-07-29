import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure InequalityEstimatesPackage {D : DifferentialFunctionPackage} where
  pointwiseEstimate : Prop
  integralEstimate : Prop
  boundaryEstimate : Prop

def InequalityEstimatesClosed {D : DifferentialFunctionPackage} (I : InequalityEstimatesPackage D) : Prop :=
  I.pointwiseEstimate ∧ I.integralEstimate ∧ I.boundaryEstimate

theorem inequality_estimates_closed {D : DifferentialFunctionPackage} (I : InequalityEstimatesPackage D) (H : I.pointwiseEstimate ∧ I.integralEstimate ∧ I.boundaryEstimate) : InequalityEstimatesClosed I := H

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse
