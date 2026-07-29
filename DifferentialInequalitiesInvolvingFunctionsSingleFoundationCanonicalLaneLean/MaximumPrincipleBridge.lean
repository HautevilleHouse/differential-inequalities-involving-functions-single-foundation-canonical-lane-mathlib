import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundation

open HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundation

structure MaximumPrinciplePackage {Ω : Type u} {F : FunctionSpace Ω}
    (P : DifferentialInequalityPackage Ω F) where
  domainCompact : Prop
  boundaryMax : Prop
  interiorInequality : Prop

structure MaximumPrincipleEvidence {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MaximumPrinciplePackage P) where
  domainCompactClosed : M.domainCompact
  boundaryMaxClosed : M.boundaryMax
  interiorInequalityClosed : M.interiorInequality

def MaximumPrincipleClosed {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MaximumPrinciplePackage P) : Prop :=
  M.domainCompact ∧ M.boundaryMax ∧ M.interiorInequality

theorem maximum_principle_closed_from_evidence
    {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MaximumPrinciplePackage P) (E : MaximumPrincipleEvidence M) :
    MaximumPrincipleClosed M := by
  exact And.intro E.domainCompactClosed (And.intro E.boundaryMaxClosed E.interiorInequalityClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundation
end HautevilleHouse
