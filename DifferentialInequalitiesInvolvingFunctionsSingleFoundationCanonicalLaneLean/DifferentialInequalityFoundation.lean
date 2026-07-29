import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentialInequalityPackage where
  functionSpace : Type u
  domain : Type v
  diffOperator : Type w
  inequalityForm : Prop
  boundConstants : Prop

def DifferentialInequalityClosed (P : DifferentialInequalityPackage) : Prop :=
  P.inequalityForm ∧ P.boundConstants

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse