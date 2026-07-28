import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

def ConstrainedLinguisticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linguistic_endgame (A : AdmissibleClass) :
    ConstrainedLinguisticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse