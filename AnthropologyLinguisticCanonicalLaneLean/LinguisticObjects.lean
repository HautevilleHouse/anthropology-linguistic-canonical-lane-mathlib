import HautevilleHouse.AnthroLinguisticCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace AnthroLinguisticCanonicalLaneLean

structure LinguisticSpace where
  carrier : Type
  alphabet : Type

grammar StructureLinguisticAdmittedObject where
  space : LinguisticSpace
  finiteAlphabet : Prop
  countableStringSet : Prop
  grammaticalModel : Type
  languageModel : Type
  equivalenceToChomsky : Prop
  conclusion : equivalenceToChomsky

structure LinguisticEndgameState where
  object : LinguisticAdmittedObject

def LinguisticWitnessClosed (O : LinguisticAdmittedObject) : Prop :=
  O.equivalenceToChomsky

end AnthroLinguisticCanonicalLaneLean
end HautevilleHouse