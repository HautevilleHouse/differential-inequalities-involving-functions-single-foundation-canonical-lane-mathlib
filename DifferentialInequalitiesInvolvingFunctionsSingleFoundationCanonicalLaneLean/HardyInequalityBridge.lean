import HautevilleHouse.DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean

structure HardyInequalityPackage where
  domain : Type u
  weight : ℝ
  hardyConstant : ℝ
  inequalityHolds : Prop

structure HardyInequalityEvidence (H : HardyInequalityPackage) where
  inequalityHoldsClosed : H.inequalityHolds

def HardyInequalityClosed (H : HardyInequalityPackage) : Prop :=
  H.inequalityHolds

theorem hardy_inequality_closed_from_evidence (H : HardyInequalityPackage) (E : HardyInequalityEvidence H) :
    HardyInequalityClosed H := by
  exact E.inequalityHoldsClosed

end DifferentialInequalitiesInvolvingFunctionsSingleFoundationCanonicalLaneLean
end HautevilleHouse