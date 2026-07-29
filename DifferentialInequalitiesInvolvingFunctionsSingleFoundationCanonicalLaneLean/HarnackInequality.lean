import canonicalLaneMathlib.AdmissibleClass
import DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.DifferentialInequalityFoundation

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure HarnackInequalityPackage (P : DifferentialInequalityPackage) where
  harnackPrinciple : Prop
  oscillationControl : Prop
  positivityPreservation : Prop

structure HarnackInequalityEvidence (P : DifferentialInequalityPackage) (H : HarnackInequalityPackage P) where
  harnackPrincipleClosed : H.harnackPrinciple
  oscillationControlClosed : H.oscillationControl
  positivityPreservationClosed : H.positivityPreservation

def HarnackInequalityClosed (P : DifferentialInequalityPackage) (H : HarnackInequalityPackage P) : Prop :=
  H.harnackPrinciple ∧ H.oscillationControl ∧ H.positivityPreservation

theorem harnack_inequality_closed_from_evidence (P : DifferentialInequalityPackage) (H : HarnackInequalityPackage P) (E : HarnackInequalityEvidence P H) : HarnackInequalityClosed P H := by
  exact And.intro E.harnackPrincipleClosed (And.intro E.oscillationControlClosed E.positivityPreservationClosed)

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse