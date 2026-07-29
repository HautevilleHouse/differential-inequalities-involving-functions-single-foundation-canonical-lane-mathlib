import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.SingleFoundationBridge

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure FunctionInequalityGate (D : FunctionInequalityDomain) where
  gateCondition : Prop
  gateWitness : gateCondition

theorem gate_from_theory (D : FunctionInequalityDomain) (G : FunctionInequalityGate D) :
    G.gateCondition := by
  exact G.gateWitness

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse