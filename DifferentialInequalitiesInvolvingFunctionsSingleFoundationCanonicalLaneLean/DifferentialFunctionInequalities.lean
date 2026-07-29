import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentialInequalityPackage where
  functionSpace : Type u
  domain : Type v
  inequality : functionSpace → Prop
  boundConstant : ℝ
  regularityCondition : Prop

structure DifferentialInequalityEvidence (P : DifferentialInequalityPackage) where
  inequalityClosed : P.inequality
  boundConstantClosed : P.boundConstant > 0
  regularityConditionClosed : P.regularityCondition

def DifferentialInequalityClosed (P : DifferentialInequalityPackage) : Prop :=
  P.inequality ∧ (P.boundConstant > 0) ∧ P.regularityCondition

theorem differential_inequality_closed_from_evidence
    (P : DifferentialInequalityPackage) (E : DifferentialInequalityEvidence P) :
    DifferentialInequalityClosed P := by
  exact And.intro E.inequalityClosed
    (And.intro E.boundConstantClosed E.regularityConditionClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse