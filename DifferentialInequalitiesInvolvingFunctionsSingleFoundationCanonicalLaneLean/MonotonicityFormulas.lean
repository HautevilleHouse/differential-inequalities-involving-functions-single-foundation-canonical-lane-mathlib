import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundation

open HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundation

structure MonotonicityFormulaPackage {Ω : Type u} {F : FunctionSpace Ω}
    (P : DifferentialInequalityPackage Ω F) where
  entropyFunctional : Type u
  monotonicityFormula : Prop
  lowerBound : Prop

structure MonotonicityFormulaEvidence {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MonotonicityFormulaPackage P) where
  monotonicityFormulaClosed : M.monotonicityFormula
  lowerBoundClosed : M.lowerBound

def MonotonicityFormulaClosed {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MonotonicityFormulaPackage P) : Prop :=
  M.monotonicityFormula ∧ M.lowerBound

theorem monotonicity_formula_closed_from_evidence
    {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (M : MonotonicityFormulaPackage P) (E : MonotonicityFormulaEvidence M) :
    MonotonicityFormulaClosed M := by
  exact And.intro E.monotonicityFormulaClosed E.lowerBoundClosed

end DifferentialInequalitiesInvolvingFunctionsSingleFoundation
end HautevilleHouse
