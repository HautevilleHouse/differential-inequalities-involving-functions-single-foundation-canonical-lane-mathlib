import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentialInequalitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DifferentialInequalityAdmittedObject where
  space : DifferentialInequalitySpace
  functionDefined : Prop
  inequalityHolds : Prop
  endpointModel : Type
  endpointTopology : TopologicalSpace endpointModel
  closureCondition : Prop
  conclusion : closureCondition

def FunctionWitnessClosed (O : DifferentialInequalityAdmittedObject) : Prop :=
  O.closureCondition

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse