import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundation

open HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundation

structure DeGiorgiIterationPackage {Ω : Type u} {F : FunctionSpace Ω}
    (P : DifferentialInequalityPackage Ω F) where
  energyEstimates : Prop
  iterationScheme : Prop
  oscillationDecay : Prop

structure DeGiorgiIterationEvidence {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (D : DeGiorgiIterationPackage P) where
  energyEstimatesClosed : D.energyEstimates
  iterationSchemeClosed : D.iterationScheme
  oscillationDecayClosed : D.oscillationDecay

def DeGiorgiIterationClosed {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (D : DeGiorgiIterationPackage P) : Prop :=
  D.energyEstimates ∧ D.iterationScheme ∧ D.oscillationDecay

theorem de_giorgi_iteration_closed_from_evidence
    {Ω : Type u} {F : FunctionSpace Ω}
    {P : DifferentialInequalityPackage Ω F}
    (D : DeGiorgiIterationPackage P) (E : DeGiorgiIterationEvidence D) :
    DeGiorgiIterationClosed D := by
  exact And.intro E.energyEstimatesClosed (And.intro E.iterationSchemeClosed E.oscillationDecayClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundation
end HautevilleHouse
