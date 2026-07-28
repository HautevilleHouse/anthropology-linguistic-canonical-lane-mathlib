import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AnthropologyLinguisticCanonicalLaneLean

structure LinguisticSpace where
  carrier : Type
  alphabet : Type
  language : Set (List alphabet)

structure LinguisticAdmittedObject where
  space : LinguisticSpace
  generativeCapacity : Prop
  conclusion : generativeCapacity

structure LinguisticEndgameState where
  object : LinguisticAdmittedObject

def LinguisticWitnessClosed (O : LinguisticAdmittedObject) : Prop :=
  O.conclusion

end AnthropologyLinguisticCanonicalLaneLean
end HautevilleHouse