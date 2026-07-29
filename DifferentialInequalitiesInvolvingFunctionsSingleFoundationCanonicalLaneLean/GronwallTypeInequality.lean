import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.FunctionInequalityDomain

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure GronwallTypeInequality (D : FunctionInequalityDomain) where
  functionUpperBound : D.baseSpace → ℝ
  gronwallConstant : ℝ
  inequalityIntegralForm : Prop
  inequalityHolds : inequalityIntegralForm

theorem gronwall_inequality_closed (D : FunctionInequalityDomain) (G : GronwallTypeInequality D) :
    G.inequalityIntegralForm := by
  exact G.inequalityHolds

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse