import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentialFunctionPackage where
  domain : Type u
  codomain : Type v
  differentialOperator : Type w
  functionSpace : Prop
  smoothnessClass : Prop

differentialFunctionClosed (D : DifferentialFunctionPackage) : Prop :=
  D.functionSpace ∧ D.smoothnessClass

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse
