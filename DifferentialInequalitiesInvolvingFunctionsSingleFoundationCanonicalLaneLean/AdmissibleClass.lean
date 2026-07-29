import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : DifferentiallyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DifferentialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse
