import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure SingleFoundationPackage where
  baseSpace : Type u
  functionClass : Type v
  differentialConstraints : Prop
  closureUnderOperations : Prop

def SingleFoundationClosed (F : SingleFoundationPackage) : Prop :=
  F.differentialConstraints ∧ F.closureUnderOperations

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse
