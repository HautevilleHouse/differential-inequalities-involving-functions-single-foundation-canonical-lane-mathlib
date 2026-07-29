import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.FunctionInequalityDomain

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure DifferentialInequalityPackage (D : FunctionInequalityDomain) where
  functionInstance : D.baseSpace → ℝ
  satisfiesInequality : Prop
  inequalityWitness : satisfiesInequality
  domainClosed : FunctionInequalityDomainClosed D

theorem inequality_package_closed (D : FunctionInequalityDomain) (P : DifferentialInequalityPackage D) :
    P.satisfiesInequality := by
  exact P.inequalityWitness

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse