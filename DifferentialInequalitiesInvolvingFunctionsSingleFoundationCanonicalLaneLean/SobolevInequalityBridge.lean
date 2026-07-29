import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundation

open HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundation

structure SobolevInequalityPackage {Ω : Type u} {F : FunctionSpace Ω}
    (P : DifferentialInequalityPackage Ω F) where
  sobolevNorm : Type v
  embeddingConstant : ℝ
  inequalityValid : Prop

structure SobolevInequalityEvidence {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (S : SobolevInequalityPackage P) where
  inequalityValidClosed : S.inequalityValid

def SobolevInequalityClosed {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (S : SobolevInequalityPackage P) : Prop :=
  S.inequalityValid

theorem sobolev_inequality_closed_from_evidence
    {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (S : SobolevInequalityPackage P) (E : SobolevInequalityEvidence S) :
    SobolevInequalityClosed S := by
  exact E.inequalityValidClosed

end DifferentialInequalitiesInvolvingFunctionsSingleFoundation
end HautevilleHouse
