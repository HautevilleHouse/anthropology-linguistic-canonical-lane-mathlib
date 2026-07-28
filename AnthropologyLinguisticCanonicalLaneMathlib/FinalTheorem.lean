import AnthropologyLinguisticCanonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneMathlib

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AnthropologyLinguisticCanonicalLaneMathlib
end HautevilleHouse
