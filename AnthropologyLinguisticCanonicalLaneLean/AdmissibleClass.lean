import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.LinguisticObjects

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

structure AdmissibleClass where
  object : LinguisticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinguisticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse