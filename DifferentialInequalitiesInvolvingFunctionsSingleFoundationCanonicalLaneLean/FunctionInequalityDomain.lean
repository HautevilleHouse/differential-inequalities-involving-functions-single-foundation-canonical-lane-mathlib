import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure FunctionInequalityDomain where
  baseSpace : Type u
  baseTopology : TopologicalSpace baseSpace
  differentiableStructure : Type v
  functionClass : (baseSpace → ℝ) → Prop
  differentialOperator : ((baseSpace → ℝ) → (baseSpace → ℝ))
  inequalityConstant : ℝ
  positiveConstant : ℝ > 0

def FunctionInequalityDomainClosed (D : FunctionInequalityDomain) : Prop :=
  D.positiveConstant

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse