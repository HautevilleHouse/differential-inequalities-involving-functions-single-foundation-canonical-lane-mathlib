import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.FunctionInequalityDomain

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure LerayInequality (D : FunctionInequalityDomain) where
  solutionMap : D.baseSpace → ℝ
  energyEstimate : Prop
  inequalitySatisfied : energyEstimate

theorem leray_inequality_closed (D : FunctionInequalityDomain) (L : LerayInequality D) :
    L.energyEstimate := by
  exact L.inequalitySatisfied

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse