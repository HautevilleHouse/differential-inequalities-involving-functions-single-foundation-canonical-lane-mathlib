import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentiallyAdmittedObject where
  space : Type u
  functionSatisfyingInequality : Prop
  conclusion : functionSatisfyingInequality

def DifferentialWitnessClosed (O : DifferentiallyAdmittedObject) : Prop :=
  O.functionSatisfyingInequality

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse
