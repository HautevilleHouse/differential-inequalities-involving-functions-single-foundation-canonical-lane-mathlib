import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure GrothendieckInequalityPackage where
  domain : Type u
  codomain : Type v
  operator : (domain → codomain) → ℝ
  inequalityConstant : ℝ
  boundProperty : Prop

structure GrothendieckInequalityEvidence (G : GrothendieckInequalityPackage) where
  boundPropertyClosed : G.boundProperty

def GrothendieckInequalityClosed (G : GrothendieckInequalityPackage) : Prop :=
  G.boundProperty

theorem grothendieck_inequality_closed_from_evidence (G : GrothendieckInequalityPackage) (E : GrothendieckInequalityEvidence G) :
    GrothendieckInequalityClosed G := by
  exact E.boundPropertyClosed

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse